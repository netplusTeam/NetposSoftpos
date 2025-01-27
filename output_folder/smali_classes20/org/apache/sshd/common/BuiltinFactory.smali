.class public interface abstract Lorg/apache/sshd/common/BuiltinFactory;
.super Ljava/lang/Object;
.source "BuiltinFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedFactory;
.implements Lorg/apache/sshd/common/OptionalFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/NamedFactory<",
        "TT;>;",
        "Lorg/apache/sshd/common/OptionalFeature;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$setUpFactories$0(ZLorg/apache/sshd/common/BuiltinFactory;)Z
    .locals 1
    .param p0, "ignoreUnsupported"    # Z
    .param p1, "f"    # Lorg/apache/sshd/common/BuiltinFactory;

    .line 37
    if-nez p0, :cond_1

    invoke-interface {p1}, Lorg/apache/sshd/common/BuiltinFactory;->isSupported()Z

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

.method public static setUpFactories(ZLjava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0, "ignoreUnsupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "Lorg/apache/sshd/common/BuiltinFactory<",
            "TT;>;>(Z",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "TT;>;>;"
        }
    .end annotation

    .line 36
    .local p1, "preferred":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/BuiltinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/BuiltinFactory$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 37
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 38
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 36
    return-object v0
.end method
