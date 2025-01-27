.class public interface abstract Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;
.super Ljava/lang/Object;
.source "UserAuthFactoriesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/sshd/common/session/SessionContext;",
        "M::",
        "Lorg/apache/sshd/common/auth/UserAuthInstance<",
        "TS;>;F::",
        "Lorg/apache/sshd/common/auth/UserAuthMethodFactory<",
        "TS;TM;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getUserAuthFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end method

.method public getUserAuthFactoriesNameList()Ljava/lang/String;
    .locals 1

    .line 47
    .local p0, "this":Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;, "Lorg/apache/sshd/common/auth/UserAuthFactoriesManager<TS;TM;TF;>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;->getUserAuthFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthFactoriesNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;, "Lorg/apache/sshd/common/auth/UserAuthFactoriesManager<TS;TM;TF;>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;->getUserAuthFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract setUserAuthFactories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;)V"
        }
    .end annotation
.end method

.method public setUserAuthFactoriesNameList(Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # Ljava/lang/String;

    .line 57
    .local p0, "this":Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;, "Lorg/apache/sshd/common/auth/UserAuthFactoriesManager<TS;TM;TF;>;"
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;->setUserAuthFactoriesNames([Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public abstract setUserAuthFactoriesNames(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs setUserAuthFactoriesNames([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 61
    .local p0, "this":Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;, "Lorg/apache/sshd/common/auth/UserAuthFactoriesManager<TS;TM;TF;>;"
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 62
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;->setUserAuthFactoriesNames(Ljava/util/Collection;)V

    .line 65
    return-void
.end method
