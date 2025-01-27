.class public interface abstract Lorg/apache/sshd/common/NamedFactory;
.super Ljava/lang/Object;
.source "NamedFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/Factory;
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/Factory<",
        "TT;>;",
        "Lorg/apache/sshd/common/NamedResource;"
    }
.end annotation


# direct methods
.method public static create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedFactory<",
            "+TT;>;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 44
    .local p0, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedFactory<+TT;>;>;"
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 45
    invoke-static {p1, v0, p0}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/NamedFactory;

    .line 46
    .local v0, "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<+TT;>;"
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lorg/apache/sshd/common/NamedFactory;->create()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 49
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic lambda$setUpBuiltinFactories$1(ZLorg/apache/sshd/common/NamedResource;)Z
    .locals 1
    .param p0, "ignoreUnsupported"    # Z
    .param p1, "f"    # Lorg/apache/sshd/common/NamedResource;

    .line 64
    if-nez p0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/OptionalFeature;

    invoke-interface {v0}, Lorg/apache/sshd/common/OptionalFeature;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$setUpTransformedFactories$0(ZLorg/apache/sshd/common/OptionalFeature;)Z
    .locals 1
    .param p0, "ignoreUnsupported"    # Z
    .param p1, "f"    # Lorg/apache/sshd/common/OptionalFeature;

    .line 56
    if-nez p0, :cond_1

    invoke-interface {p1}, Lorg/apache/sshd/common/OptionalFeature;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setUpBuiltinFactories(ZLjava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lorg/apache/sshd/common/NamedResource;",
            ":",
            "Lorg/apache/sshd/common/OptionalFeature;",
            ">(Z",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p1, "preferred":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/NamedFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/NamedFactory$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 63
    return-object v0
.end method

.method public static setUpTransformedFactories(ZLjava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;
    .locals 2
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/sshd/common/OptionalFeature;",
            "E::",
            "Lorg/apache/sshd/common/NamedResource;",
            ">(Z",
            "Ljava/util/Collection<",
            "+TS;>;",
            "Ljava/util/function/Function<",
            "-TS;+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 55
    .local p1, "preferred":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p2, "xform":Ljava/util/function/Function;, "Ljava/util/function/Function<-TS;+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/NamedFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/NamedFactory$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 56
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 57
    invoke-interface {v0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    return-object v0
.end method
