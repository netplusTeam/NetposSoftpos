.class final Lcom/google/common/collect/RegularImmutableSet;
.super Lcom/google/common/collect/ImmutableSet$CachingAsList;
.source "RegularImmutableSet.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$CachingAsList<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/RegularImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field private final transient elements:[Ljava/lang/Object;

.field private final transient hashCode:I

.field private final transient mask:I

.field final transient table:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lcom/google/common/collect/RegularImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 36
    new-instance v2, Lcom/google/common/collect/RegularImmutableSet;

    invoke-direct {v2, v1, v0, v1, v0}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    sput-object v2, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "hashCode"    # I
    .param p3, "table"    # [Ljava/lang/Object;
    .param p4, "mask"    # I

    .line 46
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$CachingAsList;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    .line 48
    iput p2, p0, Lcom/google/common/collect/RegularImmutableSet;->hashCode:I

    .line 49
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 50
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSet;->mask:I

    .line 51
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 55
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 56
    .local v0, "table":[Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 60
    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/google/common/collect/RegularImmutableSet;->mask:I

    and-int/2addr v2, v3

    .line 61
    aget-object v3, v0, v2

    .line 62
    .local v3, "candidate":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 63
    return v1

    .line 64
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    const/4 v1, 0x1

    return v1

    .line 59
    .end local v3    # "candidate":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return v1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 102
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p2

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    .line 108
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 120
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSet;->hashCode:I

    return v0
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 87
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 97
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 92
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 125
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 115
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 31
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 72
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSet;, "Lcom/google/common/collect/RegularImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    const/16 v1, 0x511

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
