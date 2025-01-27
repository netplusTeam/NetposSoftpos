.class public Lcom/sleepycat/je/utilint/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;
    }
.end annotation


# static fields
.field private static final BASE:I = 0xfff1

.field private static final NMAX:I = 0x15b0


# instance fields
.field private adler:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/Adler32;->adler:J

    return-void
.end method

.method public static makeChecksum()Ljava/util/zip/Checksum;
    .locals 2

    .line 88
    sget-boolean v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;->USE_JAVA5_ADLER32:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getAdler32ChunkSize()I

    move-result v0

    .line 90
    .local v0, "adler32ChunkSize":I
    if-lez v0, :cond_0

    .line 91
    new-instance v1, Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;-><init>(I)V

    return-object v1

    .line 93
    :cond_0
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    return-object v1

    .line 96
    .end local v0    # "adler32ChunkSize":I
    :cond_1
    new-instance v0, Lcom/sleepycat/je/utilint/Adler32;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/Adler32;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/Adler32;->adler:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 147
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/Adler32;->adler:J

    .line 148
    return-void
.end method

.method public update(I)V
    .locals 9
    .param p1, "b"    # I

    .line 113
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/Adler32;->adler:J

    const-wide/32 v2, 0xffff

    and-long v4, v0, v2

    .line 114
    .local v4, "s1":J
    const/16 v6, 0x10

    shr-long/2addr v0, v6

    and-long/2addr v0, v2

    .line 115
    .local v0, "s2":J
    and-int/lit16 v2, p1, 0xff

    int-to-long v2, v2

    add-long/2addr v2, v4

    const-wide/32 v7, 0xfff1

    rem-long/2addr v2, v7

    .line 116
    .end local v4    # "s1":J
    .local v2, "s1":J
    add-long v4, v2, v0

    rem-long/2addr v4, v7

    .line 117
    .end local v0    # "s2":J
    .local v4, "s2":J
    shl-long v0, v4, v6

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/Adler32;->adler:J

    .line 118
    return-void
.end method

.method public update([BII)V
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 124
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/Adler32;->adler:J

    const-wide/32 v2, 0xffff

    and-long v4, v0, v2

    .line 125
    .local v4, "s1":J
    const/16 v6, 0x10

    shr-long/2addr v0, v6

    and-long/2addr v0, v2

    .line 127
    .local v0, "s2":J
    :goto_0
    if-lez p3, :cond_2

    .line 128
    const/16 v2, 0x15b0

    if-ge p3, v2, :cond_0

    move v2, p3

    .line 129
    .local v2, "k":I
    :cond_0
    sub-int/2addr p3, v2

    .line 132
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "k":I
    .local v3, "k":I
    if-lez v2, :cond_1

    .line 133
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v7, p2

    add-long/2addr v4, v7

    .line 134
    add-long/2addr v0, v4

    move p2, v2

    move v2, v3

    goto :goto_1

    .line 137
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_1
    const-wide/32 v7, 0xfff1

    rem-long/2addr v4, v7

    .line 138
    rem-long/2addr v0, v7

    .line 139
    .end local v3    # "k":I
    goto :goto_0

    .line 140
    :cond_2
    shl-long v2, v0, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/utilint/Adler32;->adler:J

    .line 141
    return-void
.end method
