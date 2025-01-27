.class public Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;
.super Ljava/lang/ref/WeakReference;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakBinRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/sleepycat/je/tree/BIN;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final binLsn:J

.field final fullBinLsn:J

.field final memSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 284
    const-class v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->binLsn:J

    .line 294
    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->fullBinLsn:J

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->memSize:I

    .line 296
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JLcom/sleepycat/je/tree/BIN;)V
    .locals 2
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p2, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p3, "lsn"    # J
    .param p5, "delta"    # Lcom/sleepycat/je/tree/BIN;

    .line 304
    invoke-direct {p0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 305
    iput-wide p3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->binLsn:J

    .line 306
    invoke-virtual {p5}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->fullBinLsn:J

    .line 308
    invoke-virtual {p5}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p5}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 311
    const/16 v0, 0x600

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->memSize:I

    goto :goto_0

    .line 313
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->memSize:I

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
