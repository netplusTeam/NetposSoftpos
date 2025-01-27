.class public abstract Lcom/sleepycat/je/tree/INArrayRep;
.super Ljava/lang/Object;
.source "INArrayRep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ARRAY_BASE_TYPE:",
        "Ljava/lang/Object;",
        "REP_ENUM_TYPE:",
        "Ljava/lang/Object;",
        "E",
        "LEMENT_TYPE:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    .local p0, "this":Lcom/sleepycat/je/tree/INArrayRep;, "Lcom/sleepycat/je/tree/INArrayRep<TARRAY_BASE_TYPE;TREP_ENUM_TYPE;TELEMENT_TYPE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public abstract calculateMemorySize()J
.end method

.method public abstract compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/IN;",
            ")TARRAY_BASE_TYPE;"
        }
    .end annotation
.end method

.method public abstract copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sleepycat/je/tree/IN;",
            ")TARRAY_BASE_TYPE;"
        }
    .end annotation
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE",
            "LEMENT_TYPE;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREP_ENUM_TYPE;"
        }
    .end annotation
.end method

.method final noteRepChange(Lcom/sleepycat/je/tree/INArrayRep;Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/tree/INArrayRep<",
            "TARRAY_BASE_TYPE;TREP_ENUM_TYPE;TE",
            "LEMENT_TYPE;",
            ">;",
            "Lcom/sleepycat/je/tree/IN;",
            ")V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/sleepycat/je/tree/INArrayRep;, "Lcom/sleepycat/je/tree/INArrayRep<TARRAY_BASE_TYPE;TREP_ENUM_TYPE;TELEMENT_TYPE;>;"
    .local p1, "newRep":Lcom/sleepycat/je/tree/INArrayRep;, "Lcom/sleepycat/je/tree/INArrayRep<TARRAY_BASE_TYPE;TREP_ENUM_TYPE;TELEMENT_TYPE;>;"
    if-nez p2, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/INArrayRep;->calculateMemorySize()J

    move-result-wide v0

    .line 154
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INArrayRep;->calculateMemorySize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 153
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(J)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/je/tree/INArrayRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/sleepycat/je/tree/INArrayRep;->updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V

    .line 157
    return-void
.end method

.method public abstract resize(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TARRAY_BASE_TYPE;"
        }
    .end annotation
.end method

.method public abstract set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE",
            "LEMENT_TYPE;",
            "Lcom/sleepycat/je/tree/IN;",
            ")TARRAY_BASE_TYPE;"
        }
    .end annotation
.end method

.method abstract updateCacheStats(ZLcom/sleepycat/je/evictor/Evictor;)V
.end method

.method final updateCacheStats(ZLcom/sleepycat/je/tree/IN;)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 130
    .local p0, "this":Lcom/sleepycat/je/tree/INArrayRep;, "Lcom/sleepycat/je/tree/INArrayRep<TARRAY_BASE_TYPE;TREP_ENUM_TYPE;TELEMENT_TYPE;>;"
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/INArrayRep;->updateCacheStats(ZLcom/sleepycat/je/evictor/Evictor;)V

    .line 136
    return-void
.end method
