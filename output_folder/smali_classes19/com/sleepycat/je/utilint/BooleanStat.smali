.class public Lcom/sleepycat/je/utilint/BooleanStat;
.super Lcom/sleepycat/je/utilint/Stat;
.source "BooleanStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/Stat<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 26
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "otherStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/BooleanStat;->value:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 50
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Boolean;>;"
    invoke-super {p0}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sleepycat/je/utilint/BooleanStat;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/BooleanStat;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/utilint/BooleanStat;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotSet()Z
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public negate()V
    .locals 0

    .line 55
    return-void
.end method

.method public set(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Boolean;

    .line 35
    iput-object p1, p0, Lcom/sleepycat/je/utilint/BooleanStat;->value:Ljava/lang/Boolean;

    .line 36
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/BooleanStat;->set(Ljava/lang/Boolean;)V

    return-void
.end method
