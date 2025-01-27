.class public Lcom/sleepycat/je/utilint/StringStat;
.super Lcom/sleepycat/je/utilint/Stat;
.source "StringStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/Stat<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private value:Ljava/lang/String;


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

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "initialValue"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 34
    iput-object p3, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "otherStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public clear()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StringStat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StringStat;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isNotSet()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public negate()V
    .locals 0

    .line 59
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/StringStat;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StringStat;->value:Ljava/lang/String;

    .line 45
    return-void
.end method
