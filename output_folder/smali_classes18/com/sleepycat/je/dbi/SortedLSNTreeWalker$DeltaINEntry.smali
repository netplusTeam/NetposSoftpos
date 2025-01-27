.class public Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;
.super Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
.source "SortedLSNTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeltaINEntry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final delta:Ljava/lang/Object;

.field private final deltaLsn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    const-class v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/tree/IN;ILjava/lang/Object;J)V
    .locals 2
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I
    .param p3, "delta"    # Ljava/lang/Object;
    .param p4, "deltaLsn"    # J

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;-><init>(Lcom/sleepycat/je/tree/IN;I)V

    .line 214
    if-eqz p3, :cond_1

    .line 215
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 216
    iput-object p3, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;->delta:Ljava/lang/Object;

    .line 217
    iput-wide p4, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;->deltaLsn:J

    .line 218
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 2
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 221
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;-><init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;->delta:Ljava/lang/Object;

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;->deltaLsn:J

    .line 224
    return-void
.end method


# virtual methods
.method getDelta()Ljava/lang/Object;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;->delta:Ljava/lang/Object;

    return-object v0
.end method

.method getDeltaLsn()J
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;->deltaLsn:J

    return-wide v0
.end method

.method getMemorySize()J
    .locals 6

    .line 239
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$DeltaINEntry;->delta:Ljava/lang/Object;

    instance-of v1, v0, Lcom/sleepycat/je/tree/OldBINDelta;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getMemorySize()J

    move-result-wide v0

    .local v0, "deltaSize":J
    goto :goto_0

    .line 242
    .end local v0    # "deltaSize":J
    :cond_0
    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v0

    .line 244
    .restart local v0    # "deltaSize":J
    :goto_0
    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sget v4, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINENTRY_OVERHEAD:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    return-wide v2
.end method
