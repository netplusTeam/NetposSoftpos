.class public abstract Lcom/sleepycat/je/utilint/MapStatComponent;
.super Lcom/sleepycat/je/utilint/BaseStat;
.source "MapStatComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "TT;TC;>;>",
        "Lcom/sleepycat/je/utilint/BaseStat<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStatComponent;, "Lcom/sleepycat/je/utilint/MapStatComponent<TT;TC;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/BaseStat;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 22
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStatComponent;, "Lcom/sleepycat/je/utilint/MapStatComponent<TT;TC;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/MapStatComponent;->copy()Lcom/sleepycat/je/utilint/MapStatComponent;

    move-result-object v0

    return-object v0
.end method

.method public abstract copy()Lcom/sleepycat/je/utilint/MapStatComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 40
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStatComponent;, "Lcom/sleepycat/je/utilint/MapStatComponent<TT;TC;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/MapStatComponent;->getFormattedValue(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFormattedValue(Z)Ljava/lang/String;
.end method
