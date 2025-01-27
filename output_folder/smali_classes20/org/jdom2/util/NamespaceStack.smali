.class public final Lorg/jdom2/util/NamespaceStack;
.super Ljava/lang/Object;
.source "NamespaceStack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/util/NamespaceStack$EmptyIterable;,
        Lorg/jdom2/util/NamespaceStack$NamespaceIterable;,
        Lorg/jdom2/util/NamespaceStack$BackwardWalker;,
        Lorg/jdom2/util/NamespaceStack$ForwardWalker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jdom2/Namespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULTSEED:[Lorg/jdom2/Namespace;

.field private static final EMPTY:[Lorg/jdom2/Namespace;

.field private static final EMPTYITER:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private static final NSCOMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private added:[[Lorg/jdom2/Namespace;

.field private depth:I

.field private scope:[[Lorg/jdom2/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 229
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/jdom2/Namespace;

    sput-object v1, Lorg/jdom2/util/NamespaceStack;->EMPTY:[Lorg/jdom2/Namespace;

    .line 231
    new-instance v1, Lorg/jdom2/util/NamespaceStack$EmptyIterable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/jdom2/util/NamespaceStack$EmptyIterable;-><init>(Lorg/jdom2/util/NamespaceStack$1;)V

    sput-object v1, Lorg/jdom2/util/NamespaceStack;->EMPTYITER:Ljava/lang/Iterable;

    .line 234
    new-instance v1, Lorg/jdom2/util/NamespaceStack$1;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack$1;-><init>()V

    sput-object v1, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    .line 240
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jdom2/Namespace;

    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    aput-object v2, v1, v0

    sget-object v0, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lorg/jdom2/util/NamespaceStack;->DEFAULTSEED:[Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 328
    sget-object v0, Lorg/jdom2/util/NamespaceStack;->DEFAULTSEED:[Lorg/jdom2/Namespace;

    invoke-direct {p0, v0}, Lorg/jdom2/util/NamespaceStack;-><init>([Lorg/jdom2/Namespace;)V

    .line 329
    return-void
.end method

.method public constructor <init>([Lorg/jdom2/Namespace;)V
    .locals 3
    .param p1, "seed"    # [Lorg/jdom2/Namespace;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/16 v0, 0xa

    new-array v1, v0, [[Lorg/jdom2/Namespace;

    iput-object v1, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    .line 318
    new-array v0, v0, [[Lorg/jdom2/Namespace;

    iput-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    .line 320
    const/4 v2, -0x1

    iput v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 338
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 339
    aput-object p1, v1, v2

    .line 341
    aput-object p1, v0, v2

    .line 342
    return-void
.end method

.method private static final binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I
    .locals 3
    .param p0, "data"    # [Lorg/jdom2/Namespace;
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "key"    # Lorg/jdom2/Namespace;

    .line 290
    add-int/lit8 p2, p2, -0x1

    .line 292
    :goto_0
    if-gt p1, p2, :cond_3

    .line 296
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 297
    .local v0, "mid":I
    aget-object v1, p0, v0

    if-ne v1, p3, :cond_0

    .line 299
    return v0

    .line 301
    :cond_0
    sget-object v1, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    aget-object v2, p0, v0

    invoke-interface {v1, v2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 303
    .local v1, "cmp":I
    if-gez v1, :cond_1

    .line 304
    add-int/lit8 p1, v0, 0x1

    goto :goto_1

    .line 305
    :cond_1
    if-lez v1, :cond_2

    .line 306
    add-int/lit8 p2, v0, -0x1

    .line 311
    .end local v0    # "mid":I
    .end local v1    # "cmp":I
    :goto_1
    goto :goto_0

    .line 309
    .restart local v0    # "mid":I
    .restart local v1    # "cmp":I
    :cond_2
    return v0

    .line 312
    .end local v0    # "mid":I
    .end local v1    # "cmp":I
    :cond_3
    neg-int v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static final checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;
    .locals 5
    .param p1, "namespace"    # Lorg/jdom2/Namespace;
    .param p2, "scope"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Namespace;",
            ">;",
            "Lorg/jdom2/Namespace;",
            "[",
            "Lorg/jdom2/Namespace;",
            ")[",
            "Lorg/jdom2/Namespace;"
        }
    .end annotation

    .line 362
    .local p0, "store":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    const/4 v0, 0x0

    aget-object v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 364
    return-object p2

    .line 366
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    array-length v1, p2

    invoke-static {p2, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/Namespace;

    .line 371
    .local v1, "nscope":[Lorg/jdom2/Namespace;
    aput-object p1, v1, v0

    .line 372
    return-object v1

    .line 375
    .end local v1    # "nscope":[Lorg/jdom2/Namespace;
    :cond_1
    array-length v0, p2

    const/4 v1, 0x1

    invoke-static {p2, v1, v0, p1}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v0

    .line 376
    .local v0, "ip":I
    if-ltz v0, :cond_2

    aget-object v2, p2, v0

    if-ne p1, v2, :cond_2

    .line 378
    return-object p2

    .line 380
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    if-ltz v0, :cond_3

    .line 384
    array-length v1, p2

    invoke-static {p2, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/Namespace;

    .line 385
    .restart local v1    # "nscope":[Lorg/jdom2/Namespace;
    aput-object p1, v1, v0

    .line 386
    return-object v1

    .line 389
    .end local v1    # "nscope":[Lorg/jdom2/Namespace;
    :cond_3
    array-length v2, p2

    add-int/2addr v2, v1

    invoke-static {p2, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jdom2/Namespace;

    .line 390
    .local v2, "nscope":[Lorg/jdom2/Namespace;
    neg-int v3, v0

    sub-int/2addr v3, v1

    .line 391
    .end local v0    # "ip":I
    .local v3, "ip":I
    add-int/lit8 v0, v3, 0x1

    array-length v4, v2

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    aput-object p1, v2, v3

    .line 393
    return-object v2
.end method

.method private final pushStack(Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;Ljava/util/List;)V
    .locals 5
    .param p1, "mns"    # Lorg/jdom2/Namespace;
    .param p2, "newscope"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Namespace;",
            "[",
            "Lorg/jdom2/Namespace;",
            "Ljava/util/List<",
            "Lorg/jdom2/Namespace;",
            ">;)V"
        }
    .end annotation

    .line 481
    .local p3, "toadd":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    iget v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 483
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 485
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/jdom2/Namespace;

    iput-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    .line 486
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    array-length v0, v0

    invoke-static {v2, v0}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/jdom2/Namespace;

    iput-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    .line 490
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    sget-object v4, Lorg/jdom2/util/NamespaceStack;->EMPTY:[Lorg/jdom2/Namespace;

    aput-object v4, v0, v3

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/jdom2/Namespace;

    invoke-interface {p3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/jdom2/Namespace;

    aput-object v4, v0, v3

    .line 495
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v3

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 496
    array-length v3, v0

    sget-object v4, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    invoke-static {v0, v1, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_0

    .line 498
    :cond_2
    sget-object v3, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 502
    :goto_0
    aget-object v0, p2, v2

    if-eq p1, v0, :cond_4

    .line 503
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    array-length v0, p2

    invoke-static {p2, v0}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [Lorg/jdom2/Namespace;

    .line 512
    :cond_3
    aget-object v0, p2, v2

    .line 513
    .local v0, "tmp":Lorg/jdom2/Namespace;
    array-length v3, p2

    invoke-static {p2, v1, v3, v0}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, v1

    .line 517
    .local v3, "ip":I
    add-int/lit8 v3, v3, -0x1

    .line 518
    invoke-static {p2, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    aput-object v0, p2, v3

    .line 521
    array-length v4, p2

    invoke-static {p2, v2, v4, p1}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v3

    .line 523
    invoke-static {p2, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    aput-object p1, p2, v2

    .line 527
    .end local v0    # "tmp":Lorg/jdom2/Namespace;
    .end local v3    # "ip":I
    :cond_4
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aput-object p2, v0, v1

    .line 528
    return-void
.end method


# virtual methods
.method public addedForward()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v1

    array-length v1, v0

    if-nez v1, :cond_0

    .line 551
    sget-object v0, Lorg/jdom2/util/NamespaceStack;->EMPTYITER:Ljava/lang/Iterable;

    return-object v0

    .line 553
    :cond_0
    new-instance v1, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;-><init>([Lorg/jdom2/Namespace;Z)V

    return-object v1
.end method

.method public addedReverse()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v1

    array-length v1, v0

    if-nez v1, :cond_0

    .line 564
    sget-object v0, Lorg/jdom2/util/NamespaceStack;->EMPTYITER:Ljava/lang/Iterable;

    return-object v0

    .line 566
    :cond_0
    new-instance v1, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;-><init>([Lorg/jdom2/Namespace;Z)V

    return-object v1
.end method

.method public getScope()[Lorg/jdom2/Namespace;
    .locals 2

    .line 585
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v1

    array-length v1, v0

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public isInScope(Lorg/jdom2/Namespace;)Z
    .locals 5
    .param p1, "ns"    # Lorg/jdom2/Namespace;

    .line 595
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 596
    return v3

    .line 598
    :cond_0
    array-length v2, v0

    invoke-static {v0, v3, v2, p1}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v0

    .line 599
    .local v0, "ip":I
    if-ltz v0, :cond_2

    .line 601
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v4, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v2, v2, v4

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 603
    :cond_2
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;

    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lorg/jdom2/util/NamespaceStack$ForwardWalker;-><init>([Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public pop()V
    .locals 3

    .line 535
    iget v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    if-lez v0, :cond_0

    .line 538
    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 539
    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    aput-object v2, v1, v0

    .line 540
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 541
    return-void

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot over-pop the stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Lorg/jdom2/Attribute;)V
    .locals 4
    .param p1, "att"    # Lorg/jdom2/Attribute;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    .local v0, "toadd":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    .line 472
    .local v1, "mns":Lorg/jdom2/Namespace;
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v2

    .line 474
    .local v2, "newscope":[Lorg/jdom2/Namespace;
    invoke-direct {p0, v1, v2, v0}, Lorg/jdom2/util/NamespaceStack;->pushStack(Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;Ljava/util/List;)V

    .line 475
    return-void
.end method

.method public push(Lorg/jdom2/Element;)V
    .locals 7
    .param p1, "element"    # Lorg/jdom2/Element;

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .local v0, "toadd":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    .line 433
    .local v1, "mns":Lorg/jdom2/Namespace;
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v2

    .line 434
    .local v2, "newscope":[Lorg/jdom2/Namespace;
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAdditionalNamespaces()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Namespace;

    .line 436
    .local v4, "ns":Lorg/jdom2/Namespace;
    if-ne v4, v1, :cond_0

    .line 437
    goto :goto_0

    .line 440
    :cond_0
    invoke-static {v0, v4, v2}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v2

    .line 441
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    goto :goto_0

    .line 443
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 444
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Attribute;

    .line 445
    .local v4, "a":Lorg/jdom2/Attribute;
    invoke-virtual {v4}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v5

    .line 446
    .local v5, "ns":Lorg/jdom2/Namespace;
    sget-object v6, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v5, v6, :cond_2

    .line 449
    goto :goto_1

    .line 451
    :cond_2
    if-ne v5, v1, :cond_3

    .line 452
    goto :goto_1

    .line 455
    :cond_3
    invoke-static {v0, v5, v2}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v2

    .line 456
    .end local v4    # "a":Lorg/jdom2/Attribute;
    .end local v5    # "ns":Lorg/jdom2/Namespace;
    goto :goto_1

    .line 459
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, v1, v2, v0}, Lorg/jdom2/util/NamespaceStack;->pushStack(Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;Ljava/util/List;)V

    .line 461
    return-void
.end method
