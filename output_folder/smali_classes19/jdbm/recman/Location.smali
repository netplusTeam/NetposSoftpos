.class final Ljdbm/recman/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field private block:J

.field private offset:S


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "blockOffset"    # J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Ljdbm/recman/Location;->offset:S

    .line 75
    const/16 v0, 0x10

    shr-long v0, p1, v0

    iput-wide v0, p0, Ljdbm/recman/Location;->block:J

    .line 76
    return-void
.end method

.method constructor <init>(JS)V
    .locals 0
    .param p1, "block"    # J
    .param p3, "offset"    # S

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Ljdbm/recman/Location;->block:J

    .line 64
    iput-short p3, p0, Ljdbm/recman/Location;->offset:S

    .line 65
    return-void
.end method

.method constructor <init>(Ljdbm/recman/PhysicalRowId;)V
    .locals 2
    .param p1, "src"    # Ljdbm/recman/PhysicalRowId;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljdbm/recman/PhysicalRowId;->getBlock()J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/recman/Location;->block:J

    .line 83
    invoke-virtual {p1}, Ljdbm/recman/PhysicalRowId;->getOffset()S

    move-result v0

    iput-short v0, p0, Ljdbm/recman/Location;->offset:S

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Ljdbm/recman/Location;

    if-nez v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    move-object v1, p1

    check-cast v1, Ljdbm/recman/Location;

    .line 115
    .local v1, "ol":Ljdbm/recman/Location;
    iget-wide v2, v1, Ljdbm/recman/Location;->block:J

    iget-wide v4, p0, Ljdbm/recman/Location;->block:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-short v2, v1, Ljdbm/recman/Location;->offset:S

    iget-short v3, p0, Ljdbm/recman/Location;->offset:S

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 113
    .end local v1    # "ol":Ljdbm/recman/Location;
    :cond_2
    :goto_0
    return v0
.end method

.method getBlock()J
    .locals 2

    .line 90
    iget-wide v0, p0, Ljdbm/recman/Location;->block:J

    return-wide v0
.end method

.method getOffset()S
    .locals 1

    .line 97
    iget-short v0, p0, Ljdbm/recman/Location;->offset:S

    return v0
.end method

.method toLong()J
    .locals 4

    .line 106
    iget-wide v0, p0, Ljdbm/recman/Location;->block:J

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    iget-short v2, p0, Ljdbm/recman/Location;->offset:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ljdbm/recman/Location;->block:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Ljdbm/recman/Location;->offset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
