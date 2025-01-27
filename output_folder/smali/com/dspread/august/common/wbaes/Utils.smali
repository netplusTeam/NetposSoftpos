.class public Lcom/dspread/august/common/wbaes/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binlog(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    ushr-int/lit8 p0, p0, 0x10

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x100

    if-lt p0, v2, :cond_1

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    :cond_1
    if-lt p0, v1, :cond_2

    ushr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    :cond_2
    const/4 v1, 0x4

    if-lt p0, v1, :cond_3

    ushr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    :cond_3
    ushr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static byte2long(BI)J
    .locals 2

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    mul-int/lit8 p1, p1, 0x8

    shl-long p0, v0, p1

    return-wide p0
.end method

.method public static byte2long([B)J
    .locals 7

    .line 1
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static ceil(D)I
    .locals 2

    const-wide/high16 v0, 0x40d0000000000000L    # 16384.0

    sub-double/2addr v0, p0

    double-to-int p0, v0

    rsub-int p0, p0, 0x4000

    return p0
.end method

.method public static long2byte(JI)B
    .locals 2

    mul-int/lit8 p2, p2, 0x8

    ushr-long/2addr p0, p2

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static long2byte([BJ)V
    .locals 4

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 1
    const/4 v3, 0x0

    aput-byte v2, p0, v3

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 2
    const/4 v3, 0x1

    aput-byte v2, p0, v3

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 3
    const/4 v3, 0x2

    aput-byte v2, p0, v3

    const/16 v2, 0x18

    ushr-long/2addr p1, v2

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 4
    const/4 p2, 0x3

    aput-byte p1, p0, p2

    return-void
.end method

.method public static long2byte(J)[B
    .locals 1

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 6
    invoke-static {v0, p0, p1}, Lcom/dspread/august/common/wbaes/Utils;->long2byte([BJ)V

    return-object v0
.end method

.method public static toBinaryString([I)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget v3, p0, v2

    move v4, v0

    :goto_1
    const/16 v5, 0x20

    if-ge v4, v5, :cond_0

    ushr-int v5, v3, v4

    and-int/lit8 v5, v5, 0x1

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
