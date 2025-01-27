.class public interface abstract Lorg/apache/sshd/common/AttributeStore;
.super Ljava/lang/Object;
.source "AttributeStore.java"

# interfaces
.implements Lorg/apache/sshd/common/AttributeRepository;


# virtual methods
.method public abstract clearAttributes()V
.end method

.method public computeAttributeIfAbsent(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;+TT;>;)TT;"
        }
    .end annotation

    .line 46
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    .local p2, "resolver":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;+TT;>;"
    const-string v0, "No resolver provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/AttributeStore;->getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 50
    return-object v0

    .line 53
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    const/4 v1, 0x0

    return-object v1

    .line 58
    :cond_1
    invoke-interface {p0, p1, v0}, Lorg/apache/sshd/common/AttributeStore;->setAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object v0
.end method

.method public abstract removeAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract setAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;TT;)TT;"
        }
    .end annotation
.end method
