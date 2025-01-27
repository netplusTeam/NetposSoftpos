.class public Lcom/sleepycat/je/utilint/LongMaxZeroStat;
.super Lcom/sleepycat/je/utilint/LongMaxStat;
.source "LongMaxZeroStat.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/LongMaxStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 26
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 5

    .line 30
    invoke-super {p0}, Lcom/sleepycat/je/utilint/LongMaxStat;->get()Ljava/lang/Long;

    move-result-object v0

    .line 31
    .local v0, "value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMaxZeroStat;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
