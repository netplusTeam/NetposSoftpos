.class public abstract Lcom/sleepycat/je/utilint/Stat;
.super Lcom/sleepycat/je/utilint/BaseStat;
.source "Stat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/je/utilint/BaseStat<",
        "TT;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final definition:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 46
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/BaseStat;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sleepycat/je/utilint/Stat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 36
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/BaseStat;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/sleepycat/je/utilint/Stat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 38
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/utilint/StatGroup;->register(Lcom/sleepycat/je/utilint/Stat;)V

    .line 39
    return-void
.end method


# virtual methods
.method public abstract add(Lcom/sleepycat/je/utilint/Stat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "TT;>;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 28
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/Stat<",
            "TT;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/Stat;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v0, "copy":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    nop

    .line 79
    return-object v0

    .line 76
    .end local v0    # "copy":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    :catch_0
    move-exception v0

    .line 77
    .local v0, "unexpected":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public copyAndAdd(Lcom/sleepycat/je/utilint/StatGroup;)Lcom/sleepycat/je/utilint/Stat;
    .locals 1
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ")",
            "Lcom/sleepycat/je/utilint/Stat<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    .line 87
    .local v0, "newCopy":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/StatGroup;->register(Lcom/sleepycat/je/utilint/Stat;)V

    .line 88
    return-object v0
.end method

.method public copyAndClear()Lcom/sleepycat/je/utilint/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/Stat<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    .line 96
    .local v0, "newCopy":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/Stat;->clear()V

    .line 97
    return-object v0
.end method

.method public getDefinition()Lcom/sleepycat/je/utilint/StatDefinition;
    .locals 1

    .line 101
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Stat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    return-object v0
.end method

.method public abstract negate()V
.end method

.method public abstract set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/utilint/Stat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/Stat;->getFormattedValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 2

    .line 113
    .local p0, "this":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/utilint/Stat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/Stat;->getFormattedValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/Stat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 114
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method
