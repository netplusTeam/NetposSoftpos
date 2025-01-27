.class public Lcom/sleepycat/je/utilint/LongArrayStat;
.super Lcom/sleepycat/je/utilint/Stat;
.source "LongArrayStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/Stat<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected array:[J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;[J)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "array"    # [J

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 37
    iput-object p3, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "[J>;)V"
        }
    .end annotation

    .line 52
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<[J>;"
    nop

    .line 53
    const-string v0, "LongArrayStat doesn\'t support the add operation."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 71
    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "[J>;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "[J>;"
        }
    .end annotation

    .line 58
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<[J>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongArrayStat;->copy()Lcom/sleepycat/je/utilint/LongArrayStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongArrayStat;->copy()Lcom/sleepycat/je/utilint/LongArrayStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongArrayStat;
    .locals 6

    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongArrayStat;

    .line 80
    .local v0, "ret":Lcom/sleepycat/je/utilint/LongArrayStat;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 81
    array-length v2, v1

    new-array v2, v2, [J

    .line 82
    .local v2, "newArray":[J
    const/4 v3, 0x0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    array-length v5, v1

    .line 83
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/LongArrayStat;->set([J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "newArray":[J
    :cond_0
    return-object v0

    .line 88
    .end local v0    # "ret":Lcom/sleepycat/je/utilint/LongArrayStat;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongArrayStat;->copy()Lcom/sleepycat/je/utilint/LongArrayStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongArrayStat;->get()[J

    move-result-object v0

    return-object v0
.end method

.method public get()[J
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 8

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 98
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v1

    .line 99
    .local v1, "fmt":Ljava/text/DecimalFormat;
    const/4 v2, 0x1

    .line 100
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 101
    aget-wide v4, v4, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 102
    if-nez v2, :cond_0

    .line 103
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    const/4 v2, 0x0

    .line 106
    const-string v4, "level "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v4, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    aget-wide v4, v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "fmt":Ljava/text/DecimalFormat;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isNotSet()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 119
    return v1

    .line 122
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    .line 123
    return v1

    .line 126
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public negate()V
    .locals 1

    .line 63
    nop

    .line 64
    const-string v0, "LongArrayStat doesn\'t support the negate operation."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongArrayStat;->set([J)V

    return-void
.end method

.method public set([J)V
    .locals 0
    .param p1, "array"    # [J

    .line 47
    iput-object p1, p0, Lcom/sleepycat/je/utilint/LongArrayStat;->array:[J

    .line 48
    return-void
.end method
