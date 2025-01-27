.class public interface abstract Lorg/apache/sshd/common/AttributeRepository;
.super Ljava/lang/Object;
.source "AttributeRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/AttributeRepository$AttributeKey;
    }
.end annotation


# direct methods
.method public static ofAttributesMap(Ljava/util/Map;)Lorg/apache/sshd/common/AttributeRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "*>;*>;)",
            "Lorg/apache/sshd/common/AttributeRepository;"
        }
    .end annotation

    .line 105
    .local p0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/AttributeRepository$AttributeKey<*>;*>;"
    new-instance v0, Lorg/apache/sshd/common/AttributeRepository$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/AttributeRepository$1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static ofKeyValuePair(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/lang/Object;)Lorg/apache/sshd/common/AttributeRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TA;>;TA;)",
            "Lorg/apache/sshd/common/AttributeRepository;"
        }
    .end annotation

    .line 99
    .local p0, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TA;>;"
    .local p1, "value":Ljava/lang/Object;, "TA;"
    const-string v0, "No key provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const-string v0, "No value provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/AttributeRepository;->ofAttributesMap(Ljava/util/Map;)Lorg/apache/sshd/common/AttributeRepository;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract attributeKeys()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
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

.method public abstract getAttributesCount()I
.end method

.method public resolveAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 89
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/AttributeRepository;->getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
