.class public final Lorg/apache/sshd/common/util/MapEntryUtils;
.super Ljava/lang/Object;
.source "MapEntryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;,
        Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;,
        Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;,
        Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    }
.end annotation


# static fields
.field private static final BY_KEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Comparable;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/sshd/common/util/MapEntryUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/MapEntryUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/MapEntryUtils;->BY_KEY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byKeyEntryComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/apache/sshd/common/util/MapEntryUtils;->BY_KEY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 3
    .param p0, "o1"    # Ljava/util/Map$Entry;
    .param p1, "o2"    # Ljava/util/Map$Entry;

    .line 39
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 40
    .local v0, "k1":Ljava/lang/Comparable;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 41
    .local v1, "k2":Ljava/lang/Comparable;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
