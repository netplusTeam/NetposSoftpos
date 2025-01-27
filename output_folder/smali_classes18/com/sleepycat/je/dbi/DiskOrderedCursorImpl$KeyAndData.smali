.class Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
.super Ljava/lang/Object;
.source "DiskOrderedCursorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyAndData"
.end annotation


# instance fields
.field final data:[B

.field final dbIdx:I

.field final expiration:I

.field final key:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->dbIdx:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->key:[B

    .line 73
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->data:[B

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->expiration:I

    .line 75
    return-void
.end method

.method private constructor <init>(I[B[BIZ)V
    .locals 1
    .param p1, "dbIdx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "expiration"    # I
    .param p5, "expirationInHours"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->dbIdx:I

    .line 85
    iput-object p2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->key:[B

    .line 86
    iput-object p3, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->data:[B

    .line 87
    if-eqz p5, :cond_0

    neg-int v0, p4

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->expiration:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(I[B[BIZLcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # [B
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;-><init>(I[B[BIZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;

    .line 58
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)[B
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 58
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)[B
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 58
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 58
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->getExpirationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    .line 58
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->getDbIdx()I

    move-result v0

    return v0
.end method

.method private getData()[B
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->data:[B

    return-object v0
.end method

.method private getDbIdx()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->dbIdx:I

    return v0
.end method

.method private getExpirationTime()J
    .locals 2

    .line 103
    iget v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->expiration:I

    if-nez v0, :cond_0

    .line 104
    const-wide/16 v0, 0x0

    return-wide v0

    .line 106
    :cond_0
    if-gez v0, :cond_1

    .line 107
    neg-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v0

    return-wide v0

    .line 109
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getKey()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;->key:[B

    return-object v0
.end method
