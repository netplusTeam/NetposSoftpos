.class Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
.super Ljava/lang/Object;
.source "OffHeapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/OffHeapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedBIN"
.end annotation


# instance fields
.field final binBytes:Ljava/nio/ByteBuffer;

.field final flags:I

.field final lastDeltaLsn:J

.field final lastFullLsn:J

.field final lnMemIds:[J

.field final minExpiration:I


# direct methods
.method constructor <init>(I[JJJILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "lnMemIds"    # [J
    .param p3, "lastFullLsn"    # J
    .param p5, "lastDeltaLsn"    # J
    .param p7, "minExpiration"    # I
    .param p8, "binBytes"    # Ljava/nio/ByteBuffer;

    .line 2363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2365
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    .line 2366
    iput-object p2, p0, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lnMemIds:[J

    .line 2367
    iput-wide p3, p0, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastFullLsn:J

    .line 2368
    iput-wide p5, p0, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastDeltaLsn:J

    .line 2369
    iput p7, p0, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->minExpiration:I

    .line 2370
    iput-object p8, p0, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->binBytes:Ljava/nio/ByteBuffer;

    .line 2371
    return-void
.end method
