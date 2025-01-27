.class final Ljava9/util/ImmutableCollections$List12;
.super Ljava9/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "List12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final e1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 407
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 408
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 411
    sget-object v0, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    iput-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 412
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 414
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 415
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 416
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 417
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 441
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    .line 445
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 446
    new-instance v0, Ljava9/util/ColSer;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 448
    :cond_0
    new-instance v0, Ljava9/util/ColSer;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v2

    iget-object v2, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-direct {v0, v3, v1}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 432
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    if-nez p1, :cond_0

    .line 433
    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object v0

    .line 434
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 435
    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-object v0

    .line 437
    :cond_1
    invoke-virtual {p0, p1}, Ljava9/util/ImmutableCollections$List12;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 426
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 421
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 454
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 455
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v3

    return-object v0

    .line 457
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v3

    iget-object v1, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 464
    .local p0, "this":Ljava9/util/ImmutableCollections$List12;, "Ljava9/util/ImmutableCollections$List12<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$List12;->size()I

    move-result v0

    .line 465
    .local v0, "size":I
    array-length v1, p1

    if-lt v1, v0, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    :goto_0
    nop

    .line 467
    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    iget-object v3, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 468
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 469
    const/4 v2, 0x1

    iget-object v3, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 471
    :cond_1
    array-length v2, v1

    if-le v2, v0, :cond_2

    .line 472
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 474
    :cond_2
    return-object v1
.end method
