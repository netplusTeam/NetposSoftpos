.class public interface abstract Lorg/apache/sshd/common/ServiceFactory;
.super Ljava/lang/Object;
.source "ServiceFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# direct methods
.method public static create(Ljava/util/Collection;Ljava/lang/String;Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/ServiceFactory;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/session/Session;",
            ")",
            "Lorg/apache/sshd/common/Service;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    .local p0, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/ServiceFactory;>;"
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p1, v0, p0}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/ServiceFactory;

    .line 42
    .local v0, "factory":Lorg/apache/sshd/common/ServiceFactory;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    return-object v1

    .line 45
    :cond_0
    invoke-interface {v0, p2}, Lorg/apache/sshd/common/ServiceFactory;->create(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract create(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
