.class public abstract Lcom/sleepycat/je/tree/INLongRep;
.super Ljava/lang/Object;
.source "INLongRep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/tree/INLongRep$SparseRep;,
        Lcom/sleepycat/je/tree/INLongRep$DefaultRep;,
        Lcom/sleepycat/je/tree/INLongRep$EmptyRep;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
.end method

.method public abstract compact(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
.end method

.method public abstract copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
.end method

.method public abstract get(I)J
.end method

.method public abstract getMemorySize()J
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract resize(I)Lcom/sleepycat/je/tree/INLongRep;
.end method

.method public abstract set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
.end method
