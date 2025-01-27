.class public interface abstract Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator;
.super Ljava/lang/Object;
.source "KeyTypeIndicator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static groupByKeyType(Ljava/util/Collection;)Ljava/util/NavigableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator;",
            ">(",
            "Ljava/util/Collection<",
            "+TI;>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TI;>;>;"
        }
    .end annotation

    .line 48
    .local p0, "indicators":Ljava/util/Collection;, "Ljava/util/Collection<+TI;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator$$ExternalSyntheticLambda1;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 51
    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    .line 48
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$groupByKeyType$0()Ljava/util/TreeMap;
    .locals 2

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public abstract getKeyType()Ljava/lang/String;
.end method
