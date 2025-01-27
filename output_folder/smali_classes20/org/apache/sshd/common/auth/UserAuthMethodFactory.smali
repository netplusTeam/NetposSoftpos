.class public interface abstract Lorg/apache/sshd/common/auth/UserAuthMethodFactory;
.super Ljava/lang/Object;
.source "UserAuthMethodFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/sshd/common/session/SessionContext;",
        "M::",
        "Lorg/apache/sshd/common/auth/UserAuthInstance<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/NamedResource;"
    }
.end annotation


# static fields
.field public static final ALLOW_INSECURE_AUTH:Ljava/lang/String; = "allow-insecure-auth"

.field public static final ALLOW_NON_INTEGRITY_AUTH:Ljava/lang/String; = "allow-non-integrity-auth"

.field public static final DEFAULT_ALLOW_INSECURE_AUTH:Z = false

.field public static final DEFAULT_ALLOW_NON_INTEGRITY_AUTH:Z = false

.field public static final HOST_BASED:Ljava/lang/String; = "hostbased"

.field public static final KB_INTERACTIVE:Ljava/lang/String; = "keyboard-interactive"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "publickey"


# direct methods
.method public static createUserAuth(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "M::",
            "Lorg/apache/sshd/common/auth/UserAuthInstance<",
            "TS;>;>(TS;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/auth/UserAuthMethodFactory<",
            "TS;TM;>;>;",
            "Ljava/lang/String;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p0, "session":Lorg/apache/sshd/common/session/SessionContext;, "TS;"
    .local p1, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/auth/UserAuthMethodFactory<TS;TM;>;>;"
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 95
    invoke-static {p2, v0, p1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;

    .line 96
    .local v0, "f":Lorg/apache/sshd/common/auth/UserAuthMethodFactory;, "Lorg/apache/sshd/common/auth/UserAuthMethodFactory<TS;TM;>;"
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;->createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;

    move-result-object v1

    return-object v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isDataIntegrityAuthenticationTransport(Lorg/apache/sshd/common/session/SessionContext;)Z
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;

    .line 141
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 142
    return v0

    .line 145
    :cond_0
    const-string v1, "allow-non-integrity-auth"

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    .local v0, "allowNonValidated":Z
    if-eqz v0, :cond_1

    .line 148
    const/4 v1, 0x1

    return v1

    .line 151
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/common/session/SessionContext;->isDataIntegrityTransport(Lorg/apache/sshd/common/session/SessionContext;)Z

    move-result v1

    return v1
.end method

.method public static isSecureAuthenticationTransport(Lorg/apache/sshd/common/session/SessionContext;)Z
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;

    .line 120
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 121
    return v0

    .line 124
    :cond_0
    const-string v1, "allow-insecure-auth"

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    .local v0, "allowInsecure":Z
    if-eqz v0, :cond_1

    .line 127
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/common/session/SessionContext;->isSecureSessionTransport(Lorg/apache/sshd/common/session/SessionContext;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public abstract createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
