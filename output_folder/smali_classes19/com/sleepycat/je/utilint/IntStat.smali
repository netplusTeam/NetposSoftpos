.class public Lcom/sleepycat/je/utilint/IntStat;
.super Lcom/sleepycat/je/utilint/StatWithValueType;
.source "IntStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/StatWithValueType<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "counter"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 33
    iput p3, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    .line 34
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "count"    # I

    .line 56
    iget v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    .line 57
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "otherStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    .line 62
    return-void
.end method

.method public clear()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    .line 81
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntStat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    .line 67
    .local v0, "ret":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sleepycat/je/utilint/IntStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v1, v2, :cond_0

    .line 68
    iget v1, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/Stat;->set(Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-object v0
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/IntStat;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 3

    .line 85
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public increment()V
    .locals 1

    .line 52
    iget v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    .line 53
    return-void
.end method

.method public isNotSet()Z
    .locals 1

    .line 90
    iget v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

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

    .line 75
    iget v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    neg-int v0, v0

    iput v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    .line 76
    return-void
.end method

.method public set(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Integer;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/utilint/IntStat;->counter:I

    .line 49
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/IntStat;->set(Ljava/lang/Integer;)V

    return-void
.end method
