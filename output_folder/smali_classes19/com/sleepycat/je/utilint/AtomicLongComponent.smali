.class public Lcom/sleepycat/je/utilint/AtomicLongComponent;
.super Lcom/sleepycat/je/utilint/MapStatComponent;
.source "AtomicLongComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/AtomicLongComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final val:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "val"    # J

    .line 33
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 1
    .param p1, "inc"    # J

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 53
    return-void
.end method

.method public clear()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 63
    return-void
.end method

.method public copy()Lcom/sleepycat/je/utilint/AtomicLongComponent;
    .locals 3

    .line 67
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongComponent;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/AtomicLongComponent;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongComponent;->copy()Lcom/sleepycat/je/utilint/AtomicLongComponent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongComponent;->copy()Lcom/sleepycat/je/utilint/AtomicLongComponent;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongComponent;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue(Z)Ljava/lang/String;
    .locals 3
    .param p1, "useCommas"    # Z

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotSet()Z
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(J)V
    .locals 1
    .param p1, "newValue"    # J

    .line 43
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
