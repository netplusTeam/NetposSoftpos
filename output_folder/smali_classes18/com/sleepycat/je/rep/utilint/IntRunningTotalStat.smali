.class public Lcom/sleepycat/je/rep/utilint/IntRunningTotalStat;
.super Lcom/sleepycat/je/utilint/IntStat;
.source "IntRunningTotalStat.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 35
    return-void
.end method
