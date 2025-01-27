.class public interface abstract Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;
.super Ljava/lang/Object;
.source "KeyTypeNamesSupport.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static findSupporterByKeyTypeName(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;
    .locals 3
    .param p0, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+TS;>;)TS;"
        }
    .end annotation

    .line 51
    .local p1, "supporters":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;

    .line 51
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static synthetic lambda$findSupporterByKeyTypeName$0(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;)Z
    .locals 2
    .param p0, "typeName"    # Ljava/lang/String;
    .param p1, "s"    # Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {p1}, Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v0

    :goto_0
    nop

    .line 58
    .local v0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public abstract getSupportedKeyTypes()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
