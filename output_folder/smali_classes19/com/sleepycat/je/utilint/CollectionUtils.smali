.class public final Lcom/sleepycat/je/utilint/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;,
        Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static emptySortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedMap;->INSTANCE:Ljava/util/SortedMap;

    return-object v0
.end method

.method public static emptySortedSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/sleepycat/je/utilint/CollectionUtils$EmptySortedSet;->INSTANCE:Ljava/util/SortedSet;

    return-object v0
.end method
