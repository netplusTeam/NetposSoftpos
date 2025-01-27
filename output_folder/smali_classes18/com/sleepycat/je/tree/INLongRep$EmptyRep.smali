.class public Lcom/sleepycat/je/tree/INLongRep$EmptyRep;
.super Lcom/sleepycat/je/tree/INLongRep;
.source "INLongRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INLongRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyRep"
.end annotation


# instance fields
.field final allowSparseRep:Z

.field final minLength:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "minLength"    # I
    .param p2, "allowSparseRep"    # Z

    .line 56
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INLongRep;-><init>()V

    .line 57
    iput p1, p0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;->minLength:I

    .line 58
    iput-boolean p2, p0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;->allowSparseRep:Z

    .line 59
    return-void
.end method


# virtual methods
.method public clear(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 0
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "emptyRep"    # Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 102
    return-object p0
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 0
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "emptyRep"    # Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 97
    return-object p0
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 112
    return-object p0
.end method

.method public get(I)J
    .locals 2
    .param p1, "idx"    # I

    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMemorySize()J
    .locals 2

    .line 121
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INLongRep;
    .locals 0
    .param p1, "capacity"    # I

    .line 63
    return-object p0
.end method

.method public set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 5
    .param p1, "idx"    # I
    .param p2, "val"    # J
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 78
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 79
    return-object p0

    .line 87
    :cond_0
    new-instance v0, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;

    invoke-virtual {p4}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v1

    iget v2, p0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;->minLength:I

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;-><init>(II)V

    .line 90
    .local v0, "newCache":Lcom/sleepycat/je/tree/INLongRep;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;->getMemorySize()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v3

    invoke-virtual {p4, v1, v2, v3, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 92
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v1

    return-object v1
.end method
