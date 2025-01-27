.class public Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;
.super Ljava/lang/Object;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredDeltaRef"
.end annotation


# instance fields
.field final delta:Lcom/sleepycat/je/tree/BIN;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;->delta:Lcom/sleepycat/je/tree/BIN;

    .line 497
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;Lcom/sleepycat/je/tree/BIN;)V
    .locals 2
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p2, "delta"    # Lcom/sleepycat/je/tree/BIN;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;->delta:Lcom/sleepycat/je/tree/BIN;

    .line 501
    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$200()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 502
    return-void
.end method


# virtual methods
.method free(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V
    .locals 2
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 505
    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$200()I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 506
    return-void
.end method
