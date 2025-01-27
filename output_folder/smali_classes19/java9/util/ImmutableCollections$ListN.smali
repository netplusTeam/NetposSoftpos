.class final Ljava9/util/ImmutableCollections$ListN;
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
    name = "ListN"
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
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 483
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 486
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 487
    .local v0, "tmp":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 488
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Ljava9/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    .line 491
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

    .line 509
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    .line 513
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    new-instance v0, Ljava9/util/ColSer;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 505
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 495
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 500
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 518
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 524
    .local p0, "this":Ljava9/util/ImmutableCollections$ListN;, "Ljava9/util/ImmutableCollections$ListN<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava9/util/ImmutableCollections$ListN;->elements:[Ljava/lang/Object;

    array-length v1, v0

    .line 525
    .local v1, "size":I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 529
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 531
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 533
    :cond_1
    return-object p1
.end method
