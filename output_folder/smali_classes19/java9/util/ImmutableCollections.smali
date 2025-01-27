.class final Ljava9/util/ImmutableCollections;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/ImmutableCollections$MapN;,
        Ljava9/util/ImmutableCollections$Map1;,
        Ljava9/util/ImmutableCollections$AbstractImmutableMap;,
        Ljava9/util/ImmutableCollections$SetN;,
        Ljava9/util/ImmutableCollections$Set12;,
        Ljava9/util/ImmutableCollections$AbstractImmutableSet;,
        Ljava9/util/ImmutableCollections$ListN;,
        Ljava9/util/ImmutableCollections$List12;,
        Ljava9/util/ImmutableCollections$SubList;,
        Ljava9/util/ImmutableCollections$ListItr;,
        Ljava9/util/ImmutableCollections$AbstractImmutableList;,
        Ljava9/util/ImmutableCollections$AbstractImmutableCollection;
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;

.field static final EMPTY_LIST:Ljava9/util/ImmutableCollections$ListN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/ImmutableCollections$ListN<",
            "*>;"
        }
    .end annotation
.end field

.field static final EMPTY_MAP:Ljava9/util/ImmutableCollections$MapN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/ImmutableCollections$MapN<",
            "**>;"
        }
    .end annotation
.end field

.field static final EMPTY_SET:Ljava9/util/ImmutableCollections$SetN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/ImmutableCollections$SetN<",
            "*>;"
        }
    .end annotation
.end field

.field static final EXPAND_FACTOR:I = 0x2

.field static final REVERSE:Z

.field static final SALT32L:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 86
    const-wide v0, 0x243f6a8885a308d3L

    .line 87
    .local v0, "color":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 88
    .local v2, "seed":J
    mul-long v4, v0, v2

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    sput-wide v4, Ljava9/util/ImmutableCollections;->SALT32L:J

    .line 90
    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sput-boolean v4, Ljava9/util/ImmutableCollections;->REVERSE:Z

    .line 91
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    .line 92
    new-instance v4, Ljava9/util/ImmutableCollections$ListN;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v4, v6}, Ljava9/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    sput-object v4, Ljava9/util/ImmutableCollections;->EMPTY_LIST:Ljava9/util/ImmutableCollections$ListN;

    .line 93
    new-instance v4, Ljava9/util/ImmutableCollections$SetN;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v4, v6}, Ljava9/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    sput-object v4, Ljava9/util/ImmutableCollections;->EMPTY_SET:Ljava9/util/ImmutableCollections$SetN;

    .line 94
    new-instance v4, Ljava9/util/ImmutableCollections$MapN;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v4, v5}, Ljava9/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    sput-object v4, Ljava9/util/ImmutableCollections;->EMPTY_MAP:Ljava9/util/ImmutableCollections$MapN;

    .line 95
    .end local v0    # "color":J
    .end local v2    # "seed":J
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static floorMod(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1107
    rem-int v0, p0, p1

    .line 1109
    .local v0, "mod":I
    xor-int v1, v0, p1

    if-gez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1110
    add-int/2addr v0, p1

    .line 1112
    :cond_0
    return v0
.end method

.method static listCopy(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 123
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Ljava9/util/ImmutableCollections$AbstractImmutableList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava9/util/ImmutableCollections$SubList;

    if-eq v0, v1, :cond_0

    .line 124
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 126
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/Lists;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static rangeCheckForAdd(II)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 1100
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    .line 1104
    return-void

    .line 1101
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static uoe()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method
