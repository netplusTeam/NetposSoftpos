.class final Ljava9/util/ImmutableCollections$Set12;
.super Ljava9/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Set12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final e1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 572
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 573
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    .line 576
    sget-object v0, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    iput-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    .line 577
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 579
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 580
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iput-object p1, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    .line 585
    iput-object p2, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    .line 586
    return-void

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 635
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .line 639
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v1, :cond_0

    .line 640
    new-instance v0, Ljava9/util/ColSer;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-direct {v0, v4, v1}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 642
    :cond_0
    new-instance v0, Ljava9/util/ColSer;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v5, v1, v3

    iget-object v3, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {v0, v4, v1}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 600
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 605
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    sget-object v2, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 595
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 611
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    new-instance v0, Ljava9/util/ImmutableCollections$Set12$1;

    invoke-direct {v0, p0}, Ljava9/util/ImmutableCollections$Set12$1;-><init>(Ljava9/util/ImmutableCollections$Set12;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 590
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 648
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 649
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v2

    return-object v0

    .line 650
    :cond_0
    sget-boolean v0, Ljava9/util/ImmutableCollections;->REVERSE:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 651
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v3

    return-object v0

    .line 653
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    aput-object v1, v0, v3

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 660
    .local p0, "this":Ljava9/util/ImmutableCollections$Set12;, "Ljava9/util/ImmutableCollections$Set12<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$Set12;->size()I

    move-result v0

    .line 661
    .local v0, "size":I
    array-length v1, p1

    if-lt v1, v0, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 662
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

    .line 663
    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 664
    iget-object v3, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v3, v1, v2

    goto :goto_1

    .line 665
    :cond_1
    sget-boolean v4, Ljava9/util/ImmutableCollections;->REVERSE:Z

    if-eqz v4, :cond_2

    .line 666
    iget-object v4, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 667
    iget-object v2, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v2, v1, v3

    goto :goto_1

    .line 669
    :cond_2
    iget-object v4, p0, Ljava9/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 670
    iget-object v2, p0, Ljava9/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 672
    :goto_1
    array-length v2, v1

    if-le v2, v0, :cond_3

    .line 673
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 675
    :cond_3
    return-object v1
.end method
