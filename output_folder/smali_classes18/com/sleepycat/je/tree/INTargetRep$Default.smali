.class public Lcom/sleepycat/je/tree/INTargetRep$Default;
.super Lcom/sleepycat/je/tree/INTargetRep;
.source "INTargetRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INTargetRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# instance fields
.field private final targets:[Lcom/sleepycat/je/tree/Node;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 54
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep;-><init>()V

    .line 55
    new-array v0, p1, [Lcom/sleepycat/je/tree/Node;

    iput-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 59
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    .line 61
    return-void
.end method

.method private constructor <init>([Lcom/sleepycat/je/tree/Node;)V
    .locals 0
    .param p1, "targets"    # [Lcom/sleepycat/je/tree/Node;

    .line 63
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    .line 65
    return-void
.end method


# virtual methods
.method public calculateMemorySize()J
    .locals 2

    .line 126
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_TARGET_ENTRY_OVERHEAD:I

    iget-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v1, v1

    .line 127
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->objectArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 126
    return-wide v0
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 5
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 98
    .local v4, "target":Lcom/sleepycat/je/tree/Node;
    if-eqz v4, :cond_0

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 97
    .end local v4    # "target":Lcom/sleepycat/je/tree/Node;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    iget-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v1, v1

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_2

    goto :goto_3

    .line 108
    :cond_2
    const/4 v1, 0x0

    .line 109
    .local v1, "newRep":Lcom/sleepycat/je/tree/INTargetRep;
    if-nez v0, :cond_3

    .line 110
    sget-object v1, Lcom/sleepycat/je/tree/INTargetRep$Default;->NONE:Lcom/sleepycat/je/tree/INTargetRep$None;

    goto :goto_2

    .line 112
    :cond_3
    new-instance v2, Lcom/sleepycat/je/tree/INTargetRep$Sparse;

    iget-object v3, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;-><init>(I)V

    move-object v1, v2

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 114
    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {v1, v2, v3, p1}, Lcom/sleepycat/je/tree/INTargetRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    .line 113
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    .end local v2    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, p1}, Lcom/sleepycat/je/tree/INTargetRep$Default;->noteRepChange(Lcom/sleepycat/je/tree/INArrayRep;Lcom/sleepycat/je/tree/IN;)V

    .line 121
    return-object v1

    .line 105
    .end local v1    # "newRep":Lcom/sleepycat/je/tree/INTargetRep;
    :cond_6
    :goto_3
    return-object p0
.end method

.method public bridge synthetic compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Default;->compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 90
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-object p0
.end method

.method public bridge synthetic copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INTargetRep$Default;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lcom/sleepycat/je/tree/Node;
    .locals 1
    .param p1, "idx"    # I

    .line 79
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Default;->get(I)Lcom/sleepycat/je/tree/Node;

    move-result-object p1

    return-object p1
.end method

.method public getType()Lcom/sleepycat/je/tree/INTargetRep$Type;
    .locals 1

    .line 74
    sget-object v0, Lcom/sleepycat/je/tree/INTargetRep$Type;->DEFAULT:Lcom/sleepycat/je/tree/INTargetRep$Type;

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INTargetRep$Default;->getType()Lcom/sleepycat/je/tree/INTargetRep$Type;

    move-result-object v0

    return-object v0
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INTargetRep$Default;
    .locals 3
    .param p1, "capacity"    # I

    .line 69
    new-instance v0, Lcom/sleepycat/je/tree/INTargetRep$Default;

    iget-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sleepycat/je/tree/Node;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/INTargetRep$Default;-><init>([Lcom/sleepycat/je/tree/Node;)V

    return-object v0
.end method

.method public bridge synthetic resize(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Default;->resize(I)Lcom/sleepycat/je/tree/INTargetRep$Default;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Default;->targets:[Lcom/sleepycat/je/tree/Node;

    aput-object p2, v0, p1

    .line 85
    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lcom/sleepycat/je/tree/Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/INTargetRep$Default;->set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public updateCacheStats(ZLcom/sleepycat/je/evictor/Evictor;)V
    .locals 0
    .param p1, "increment"    # Z
    .param p2, "evictor"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 136
    return-void
.end method
