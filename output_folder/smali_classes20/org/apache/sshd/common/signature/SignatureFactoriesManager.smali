.class public interface abstract Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
.super Ljava/lang/Object;
.source "SignatureFactoriesManager.java"


# direct methods
.method public static getSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/signature/SignatureFactoriesManager;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 92
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->getSignatureFactories()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static resolveSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;
    .locals 2
    .param p0, "primary"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .param p1, "secondary"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/signature/SignatureFactoriesManager;",
            "Lorg/apache/sshd/common/signature/SignatureFactoriesManager;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->getSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->getSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract getSignatureFactories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end method

.method public getSignatureFactoriesNameList()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-interface {p0}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->getSignatureFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureFactoriesNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-interface {p0}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->getSignatureFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract setSignatureFactories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public setSignatureFactoriesNameList(Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # Ljava/lang/String;

    .line 54
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->setSignatureFactoriesNames([Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setSignatureFactoriesNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->parseSignatureList(Ljava/util/Collection;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    move-result-object v0

    .line 64
    .local v0, "result":Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
    nop

    .line 65
    invoke-virtual {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "No supported signature factories: %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-virtual {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, "Unsupported signature factories found: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-interface {p0, v1}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->setSignatureFactories(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public varargs setSignatureFactoriesNames([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 58
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->setSignatureFactoriesNames(Ljava/util/Collection;)V

    .line 59
    return-void
.end method
