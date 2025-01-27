.class public abstract Lcom/sleepycat/je/utilint/StatWithValueType;
.super Lcom/sleepycat/je/utilint/Stat;
.source "StatWithValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/je/utilint/Stat<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 40
    .local p0, "this":Lcom/sleepycat/je/utilint/StatWithValueType;, "Lcom/sleepycat/je/utilint/StatWithValueType<TT;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 31
    .local p0, "this":Lcom/sleepycat/je/utilint/StatWithValueType;, "Lcom/sleepycat/je/utilint/StatWithValueType<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getForType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/sleepycat/je/utilint/StatWithValueType;, "Lcom/sleepycat/je/utilint/StatWithValueType<TT;>;"
    .local p1, "requestedType":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatWithValueType;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatWithValueType;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValueType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method
