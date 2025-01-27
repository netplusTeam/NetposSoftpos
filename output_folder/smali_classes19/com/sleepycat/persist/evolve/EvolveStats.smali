.class public Lcom/sleepycat/persist/evolve/EvolveStats;
.super Ljava/lang/Object;
.source "EvolveStats.java"


# instance fields
.field private nConverted:I

.field private nRead:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method add(II)V
    .locals 1
    .param p1, "nRead"    # I
    .param p2, "nConverted"    # I

    .line 31
    iget v0, p0, Lcom/sleepycat/persist/evolve/EvolveStats;->nRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/persist/evolve/EvolveStats;->nRead:I

    .line 32
    iget v0, p0, Lcom/sleepycat/persist/evolve/EvolveStats;->nConverted:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sleepycat/persist/evolve/EvolveStats;->nConverted:I

    .line 33
    return-void
.end method

.method public getNConverted()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/sleepycat/persist/evolve/EvolveStats;->nConverted:I

    return v0
.end method

.method public getNRead()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/sleepycat/persist/evolve/EvolveStats;->nRead:I

    return v0
.end method
