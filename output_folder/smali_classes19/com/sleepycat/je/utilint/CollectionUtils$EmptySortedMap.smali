.class Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;
.super Ljava/util/AbstractMap;
.source "CollectionUtils.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;->INSTANCE:Ljava/util/SortedMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 127
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    sget-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;->INSTANCE:Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
