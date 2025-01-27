.class public final Lcom/sleepycat/je/cleaner/LNInfo;
.super Ljava/lang/Object;
.source "LNInfo.java"


# instance fields
.field private final dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private final expirationTime:J

.field private final key:[B

.field private final ln:Lcom/sleepycat/je/tree/LN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/tree/LN;Lcom/sleepycat/je/dbi/DatabaseId;[BJ)V
    .locals 0
    .param p1, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p3, "key"    # [B
    .param p4, "expirationTime"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/LNInfo;->ln:Lcom/sleepycat/je/tree/LN;

    .line 39
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/LNInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 40
    iput-object p3, p0, Lcom/sleepycat/je/cleaner/LNInfo;->key:[B

    .line 41
    iput-wide p4, p0, Lcom/sleepycat/je/cleaner/LNInfo;->expirationTime:J

    .line 42
    return-void
.end method


# virtual methods
.method getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/LNInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method getExpirationTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/LNInfo;->expirationTime:J

    return-wide v0
.end method

.method getKey()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/LNInfo;->key:[B

    return-object v0
.end method

.method getLN()Lcom/sleepycat/je/tree/LN;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/LNInfo;->ln:Lcom/sleepycat/je/tree/LN;

    return-object v0
.end method

.method getMemorySize()I
    .locals 6

    .line 65
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_INFO_OVERHEAD:I

    .line 66
    .local v0, "size":I
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/LNInfo;->ln:Lcom/sleepycat/je/tree/LN;

    if-eqz v1, :cond_0

    .line 67
    int-to-long v2, v0

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->getMemorySizeIncludedByParent()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/LNInfo;->key:[B

    if-eqz v1, :cond_1

    .line 70
    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_1
    return v0
.end method
