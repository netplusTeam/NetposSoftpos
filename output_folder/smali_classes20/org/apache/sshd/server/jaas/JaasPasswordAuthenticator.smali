.class public Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "JaasPasswordAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;


# instance fields
.field private domain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;->domain:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic lambda$authenticate$0(Ljava/lang/String;Ljava/lang/String;[Ljavax/security/auth/callback/Callback;)V
    .locals 5
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callbacks"    # [Ljavax/security/auth/callback/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 63
    .local v2, "callback":Ljavax/security/auth/callback/Callback;
    instance-of v3, v2, Ljavax/security/auth/callback/NameCallback;

    if-eqz v3, :cond_0

    .line 64
    move-object v3, v2

    check-cast v3, Ljavax/security/auth/callback/NameCallback;

    invoke-virtual {v3, p0}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_0
    instance-of v3, v2, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v3, :cond_1

    .line 66
    move-object v3, v2

    check-cast v3, Ljavax/security/auth/callback/PasswordCallback;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    .line 62
    .end local v2    # "callback":Ljavax/security/auth/callback/Callback;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .restart local v2    # "callback":Ljavax/security/auth/callback/Callback;
    :cond_1
    new-instance v0, Ljavax/security/auth/callback/UnsupportedCallbackException;

    invoke-direct {v0, v2}, Ljavax/security/auth/callback/UnsupportedCallbackException;-><init>(Ljavax/security/auth/callback/Callback;)V

    throw v0

    .line 71
    .end local v2    # "callback":Ljavax/security/auth/callback/Callback;
    :cond_2
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 60
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljavax/security/auth/Subject;

    invoke-direct {v1}, Ljavax/security/auth/Subject;-><init>()V

    .line 61
    .local v1, "subject":Ljavax/security/auth/Subject;
    new-instance v2, Ljavax/security/auth/login/LoginContext;

    invoke-virtual {p0}, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;->getDomain()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, p2}, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v4}, Ljavax/security/auth/login/LoginContext;-><init>(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;)V

    .line 72
    .local v2, "loginContext":Ljavax/security/auth/login/LoginContext;
    invoke-virtual {v2}, Ljavax/security/auth/login/LoginContext;->login()V

    .line 73
    invoke-virtual {v2}, Ljavax/security/auth/login/LoginContext;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return v0

    .line 75
    .end local v1    # "subject":Ljavax/security/auth/Subject;
    .end local v2    # "loginContext":Ljavax/security/auth/login/LoginContext;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const/4 v0, 0x3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 76
    const-string v0, "authenticate({}) failed ({}) to authenticate user={}: {}"

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_0
    return v4
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/apache/sshd/server/jaas/JaasPasswordAuthenticator;->domain:Ljava/lang/String;

    .line 54
    return-void
.end method
