.class public abstract Lcom/sleepycat/je/utilint/BaseStat;
.super Ljava/lang/Object;
.source "BaseStat.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lcom/sleepycat/je/utilint/BaseStat;, "Lcom/sleepycat/je/utilint/BaseStat<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract copy()Lcom/sleepycat/je/utilint/BaseStat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/BaseStat<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract getFormattedValue()Ljava/lang/String;
.end method

.method public abstract isNotSet()Z
.end method
