.class Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;
.super Ljava/util/AbstractSet;
.source "CollectionUtils.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "*>;"
        }
    .end annotation
.end field

.field private static ITER:Ljava/util/Iterator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;->INSTANCE:Ljava/util/SortedSet;

    .line 51
    new-instance v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet$1;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet$1;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;->ITER:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 88
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    sget-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;->INSTANCE:Ljava/util/SortedSet;

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
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

    .line 83
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    sget-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;->ITER:Ljava/util/Iterator;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 85
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;, "Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
