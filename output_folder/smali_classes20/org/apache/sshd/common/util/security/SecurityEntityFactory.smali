.class public interface abstract Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
.super Ljava/lang/Object;
.source "SecurityEntityFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static toDefaultFactory(Ljava/lang/Class;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)",
            "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
            "TF;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 77
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "getInstance"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    .local v0, "m":Ljava/lang/reflect/Method;
    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object v1
.end method

.method public static toFactory(Ljava/lang/Class;Lorg/apache/sshd/common/util/security/SecurityProviderChoice;Lorg/apache/sshd/common/util/security/SecurityProviderChoice;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
    .locals 1
    .param p1, "registrar"    # Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    .param p2, "defaultProvider"    # Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Lorg/apache/sshd/common/util/security/SecurityProviderChoice;",
            "Lorg/apache/sshd/common/util/security/SecurityProviderChoice;",
            ")",
            "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
            "TF;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 60
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    if-nez p1, :cond_3

    .line 61
    if-eqz p2, :cond_2

    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->EMPTY:Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p2}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->isNamedProviderUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {p2}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toNamedProviderFactory(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1
    invoke-interface {p2}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->getSecurityProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toProviderInstanceFactory(Ljava/lang/Class;Ljava/security/Provider;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    return-object v0

    .line 62
    :cond_2
    :goto_0
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toDefaultFactory(Ljava/lang/Class;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    return-object v0

    .line 68
    :cond_3
    invoke-interface {p1}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->isNamedProviderUsed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-interface {p1}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toNamedProviderFactory(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    return-object v0

    .line 71
    :cond_4
    invoke-interface {p1}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->getSecurityProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toProviderInstanceFactory(Ljava/lang/Class;Ljava/security/Provider;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    return-object v0
.end method

.method public static toNamedProviderFactory(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
            "TF;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 116
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const-string v0, "No provider name specified"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "getInstance"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    .local v0, "m":Ljava/lang/reflect/Method;
    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-object v1
.end method

.method public static toProviderInstanceFactory(Ljava/lang/Class;Ljava/security/Provider;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
    .locals 3
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Ljava/security/Provider;",
            ")",
            "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
            "TF;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 156
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const-string v0, "No provider instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/security/Provider;

    aput-object v2, v0, v1

    const-string v1, "getInstance"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    .local v0, "m":Ljava/lang/reflect/Method;
    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;-><init>(Ljava/lang/Class;Ljava/security/Provider;Ljava/lang/reflect/Method;)V

    return-object v1
.end method


# virtual methods
.method public abstract getEntityType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
