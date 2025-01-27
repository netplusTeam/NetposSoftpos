.class public Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;
.super Lcom/sleepycat/je/utilint/Stat;
.source "ActiveTxnArrayStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/Stat<",
        "[",
        "Lcom/sleepycat/je/TransactionStats$Active;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private array:[Lcom/sleepycat/je/TransactionStats$Active;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;[Lcom/sleepycat/je/TransactionStats$Active;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "array"    # [Lcom/sleepycat/je/TransactionStats$Active;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 38
    iput-object p3, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    .line 39
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "[",
            "Lcom/sleepycat/je/TransactionStats$Active;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<[Lcom/sleepycat/je/TransactionStats$Active;>;"
    nop

    .line 54
    const-string v0, "ActiveTxnArrayStat doesn\'t support the add operation."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 61
    new-instance v2, Lcom/sleepycat/je/TransactionStats$Active;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/sleepycat/je/TransactionStats$Active;->getName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/je/TransactionStats$Active;-><init>(Ljava/lang/String;JJ)V

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
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
            "[",
            "Lcom/sleepycat/je/TransactionStats$Active;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "[",
            "Lcom/sleepycat/je/TransactionStats$Active;",
            ">;"
        }
    .end annotation

    .line 68
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<[Lcom/sleepycat/je/TransactionStats$Active;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->copy()Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;
    .locals 5

    .line 80
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    .line 81
    .local v0, "ret":Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 82
    array-length v2, v1

    new-array v2, v2, [Lcom/sleepycat/je/TransactionStats$Active;

    .line 83
    .local v2, "newArray":[Lcom/sleepycat/je/TransactionStats$Active;
    array-length v3, v1

    .line 84
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->set([Lcom/sleepycat/je/TransactionStats$Active;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "newArray":[Lcom/sleepycat/je/TransactionStats$Active;
    :cond_0
    return-object v0

    .line 89
    .end local v0    # "ret":Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->copy()Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->copy()Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->get()[Lcom/sleepycat/je/TransactionStats$Active;

    move-result-object v0

    return-object v0
.end method

.method public get()[Lcom/sleepycat/je/TransactionStats$Active;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 9

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 99
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v1

    .line 100
    .local v1, "fmt":Ljava/text/DecimalFormat;
    iget-object v2, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 101
    .local v5, "active":Lcom/sleepycat/je/TransactionStats$Active;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " txnId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sleepycat/je/TransactionStats$Active;->getId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " txnName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 102
    invoke-virtual {v5}, Lcom/sleepycat/je/TransactionStats$Active;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .end local v5    # "active":Lcom/sleepycat/je/TransactionStats$Active;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "fmt":Ljava/text/DecimalFormat;
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isNotSet()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 113
    return v1

    .line 116
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    .line 117
    return v1

    .line 120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public negate()V
    .locals 1

    .line 73
    nop

    .line 74
    const-string v0, "ActiveTxnArrayStat doesn\'t support the negate operation."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, [Lcom/sleepycat/je/TransactionStats$Active;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->set([Lcom/sleepycat/je/TransactionStats$Active;)V

    return-void
.end method

.method public set([Lcom/sleepycat/je/TransactionStats$Active;)V
    .locals 0
    .param p1, "array"    # [Lcom/sleepycat/je/TransactionStats$Active;

    .line 48
    iput-object p1, p0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->array:[Lcom/sleepycat/je/TransactionStats$Active;

    .line 49
    return-void
.end method
