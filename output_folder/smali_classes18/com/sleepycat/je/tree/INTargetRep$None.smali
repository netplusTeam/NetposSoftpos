.class public Lcom/sleepycat/je/tree/INTargetRep$None;
.super Lcom/sleepycat/je/tree/INTargetRep;
.source "INTargetRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INTargetRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "None"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep;-><init>()V

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/tree/INTargetRep$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/tree/INTargetRep$1;

    .line 303
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep$None;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 0
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 309
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep;-><init>()V

    .line 310
    return-void
.end method


# virtual methods
.method public calculateMemorySize()J
    .locals 2

    .line 356
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 0
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 350
    return-object p0
.end method

.method public bridge synthetic compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$None;->compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 345
    return-object p0
.end method

.method public bridge synthetic copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INTargetRep$None;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lcom/sleepycat/je/tree/Node;
    .locals 1
    .param p1, "idx"    # I

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$None;->get(I)Lcom/sleepycat/je/tree/Node;

    move-result-object p1

    return-object p1
.end method

.method public getType()Lcom/sleepycat/je/tree/INTargetRep$Type;
    .locals 1

    .line 319
    sget-object v0, Lcom/sleepycat/je/tree/INTargetRep$Type;->NONE:Lcom/sleepycat/je/tree/INTargetRep$Type;

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INTargetRep$None;->getType()Lcom/sleepycat/je/tree/INTargetRep$Type;

    move-result-object v0

    return-object v0
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INTargetRep$None;
    .locals 0
    .param p1, "capacity"    # I

    .line 314
    return-object p0
.end method

.method public bridge synthetic resize(I)Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$None;->resize(I)Lcom/sleepycat/je/tree/INTargetRep$None;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 2
    .param p1, "idx"    # I
    .param p2, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 330
    if-nez p2, :cond_0

    .line 331
    return-object p0

    .line 334
    :cond_0
    new-instance v0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;

    invoke-virtual {p3}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;-><init>(I)V

    .line 335
    .local v0, "targets":Lcom/sleepycat/je/tree/INTargetRep;
    invoke-virtual {p0, v0, p3}, Lcom/sleepycat/je/tree/INTargetRep$None;->noteRepChange(Lcom/sleepycat/je/tree/INArrayRep;Lcom/sleepycat/je/tree/IN;)V

    .line 336
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/tree/INTargetRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/INTargetRep;

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 303
    check-cast p2, Lcom/sleepycat/je/tree/Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/INTargetRep$None;->set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public updateCacheStats(ZLcom/sleepycat/je/evictor/Evictor;)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "evictor"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 361
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor;->getNINNoTarget()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor;->getNINNoTarget()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 366
    :goto_0
    return-void
.end method
