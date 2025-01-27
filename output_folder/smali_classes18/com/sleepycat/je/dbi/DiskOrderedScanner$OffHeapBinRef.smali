.class public Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;
.super Ljava/lang/Object;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffHeapBinRef"
.end annotation


# instance fields
.field final binLsn:J

.field final fullBinLsn:J

.field final memSize:I

.field final ohBinId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->ohBinId:I

    .line 328
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->binLsn:J

    .line 329
    iput-wide v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->fullBinLsn:J

    .line 330
    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->memSize:I

    .line 331
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;JJI)V
    .locals 1
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p2, "ctx"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
    .param p3, "binLsn"    # J
    .param p5, "fullBinLsn"    # J
    .param p7, "ohBinId"    # I

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p7, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->ohBinId:I

    .line 341
    iput-wide p3, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->binLsn:J

    .line 342
    iput-wide p5, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->fullBinLsn:J

    .line 343
    const/16 v0, 0x600

    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->memSize:I

    .line 344
    return-void
.end method
