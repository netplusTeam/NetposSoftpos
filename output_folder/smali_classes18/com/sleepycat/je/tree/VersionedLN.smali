.class public Lcom/sleepycat/je/tree/VersionedLN;
.super Lcom/sleepycat/je/tree/LN;
.source "VersionedLN.java"


# instance fields
.field private vlsnSequence:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/sleepycat/je/tree/LN;-><init>()V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/VersionedLN;->vlsnSequence:J

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 46
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/LN;-><init>(Lcom/sleepycat/je/DatabaseEntry;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/VersionedLN;->vlsnSequence:J

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;
    .param p2, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 51
    invoke-direct {p0, p2}, Lcom/sleepycat/je/tree/LN;-><init>(Lcom/sleepycat/je/DatabaseEntry;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/VersionedLN;->vlsnSequence:J

    .line 52
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 42
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/LN;-><init>([B)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/VersionedLN;->vlsnSequence:J

    .line 43
    return-void
.end method


# virtual methods
.method public getMemorySizeIncludedByParent()J
    .locals 4

    .line 69
    invoke-super {p0}, Lcom/sleepycat/je/tree/LN;->getMemorySizeIncludedByParent()J

    move-result-wide v0

    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->VERSIONEDLN_OVERHEAD:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getVLSNSequence()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/sleepycat/je/tree/VersionedLN;->vlsnSequence:J

    return-wide v0
.end method

.method public setVLSNSequence(J)V
    .locals 0
    .param p1, "seq"    # J

    .line 61
    iput-wide p1, p0, Lcom/sleepycat/je/tree/VersionedLN;->vlsnSequence:J

    .line 62
    return-void
.end method
