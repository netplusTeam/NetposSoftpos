.class public Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
.super Ljava/lang/Object;
.source "BlockBag.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/sleepycat/je/rep/util/ldiff/Block;",
        ">;"
    }
.end annotation


# instance fields
.field private blockIndex:I

.field private final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/util/ldiff/Block;",
            ">;"
        }
    .end annotation
.end field

.field private final chksums:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->chksums:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    .line 25
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    .line 25
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/rep/util/ldiff/Block;)V
    .locals 4
    .param p1, "b"    # Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 52
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getRollingChksum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 53
    .local v0, "chksum":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    .local v1, "indx":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->chksums:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 56
    .local v2, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_0

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 59
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->chksums:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public get(J)Ljava/util/List;
    .locals 7
    .param p1, "chksum"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/util/ldiff/Block;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->chksums:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 76
    .local v1, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 77
    return-object v2

    .line 79
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 80
    .local v4, "indx":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 81
    .local v5, "i":I
    iget v6, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    if-lt v5, v6, :cond_1

    .line 82
    iget-object v6, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v4    # "indx":Ljava/lang/Integer;
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 86
    return-object v2

    .line 88
    :cond_3
    return-object v0
.end method

.method public getBlock()Lcom/sleepycat/je/rep/util/ldiff/Block;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    iget v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/util/ldiff/Block;

    return-object v0
.end method

.method public getBlockIndex()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sleepycat/je/rep/util/ldiff/Block;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;-><init>(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)V

    return-object v0
.end method

.method public remove(Lcom/sleepycat/je/rep/util/ldiff/Block;)Ljava/util/List;
    .locals 4
    .param p1, "b"    # Lcom/sleepycat/je/rep/util/ldiff/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/util/ldiff/Block;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/util/ldiff/Block;",
            ">;"
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    .line 110
    .local v0, "startIndex":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 111
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 112
    .local v1, "b2":Lcom/sleepycat/je/rep/util/ldiff/Block;
    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    .line 113
    if-ne p1, v1, :cond_0

    .line 114
    goto :goto_1

    .line 116
    .end local v1    # "b2":Lcom/sleepycat/je/rep/util/ldiff/Block;
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    sub-int v2, v1, v0

    if-gt v2, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    sub-int/2addr v1, v3

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public removeAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/util/ldiff/Block;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 134
    .local v1, "b":Lcom/sleepycat/je/rep/util/ldiff/Block;
    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v1    # "b":Lcom/sleepycat/je/rep/util/ldiff/Block;
    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const/4 v1, 0x0

    return-object v1

    .line 141
    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->blockIndex:I

    sub-int/2addr v0, v1

    return v0
.end method
