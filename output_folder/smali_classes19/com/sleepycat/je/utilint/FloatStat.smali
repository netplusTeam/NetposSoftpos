.class public Lcom/sleepycat/je/utilint/FloatStat;
.super Lcom/sleepycat/je/utilint/Stat;
.source "FloatStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/Stat<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private val:F


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "val"    # F

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 32
    iput p3, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    .line 33
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "otherStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Float;>;"
    iget v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    .line 48
    return-void
.end method

.method public clear()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    .line 67
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 52
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/FloatStat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    .line 53
    .local v0, "ret":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/sleepycat/je/utilint/FloatStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v1, v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/FloatStat;->get()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/Stat;->set(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-object v0
.end method

.method public get()Ljava/lang/Float;
    .locals 1

    .line 37
    iget v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/FloatStat;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 71
    iget v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotSet()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public negate()V
    .locals 1

    .line 61
    iget v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    neg-float v0, v0

    iput v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    .line 62
    return-void
.end method

.method public set(Ljava/lang/Float;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Float;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/utilint/FloatStat;->val:F

    .line 43
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/FloatStat;->set(Ljava/lang/Float;)V

    return-void
.end method
