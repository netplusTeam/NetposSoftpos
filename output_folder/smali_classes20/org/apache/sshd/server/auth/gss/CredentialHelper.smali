.class public final Lorg/apache/sshd/server/auth/gss/CredentialHelper;
.super Ljava/lang/Object;
.source "CredentialHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;,
        Lorg/apache/sshd/server/auth/gss/CredentialHelper$FixedLoginConfiguration;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static creds(Lorg/ietf/jgss/GSSManager;Ljava/lang/String;Ljava/lang/String;)Lorg/ietf/jgss/GSSCredential;
    .locals 4
    .param p0, "mgr"    # Lorg/ietf/jgss/GSSManager;
    .param p1, "spn"    # Ljava/lang/String;
    .param p2, "keytab"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljavax/security/auth/login/LoginContext;

    new-instance v1, Lorg/apache/sshd/server/auth/gss/CredentialHelper$FixedLoginConfiguration;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/sshd/server/auth/gss/CredentialHelper$FixedLoginConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/auth/gss/CredentialHelper$1;)V

    const-string/jumbo v3, "x"

    invoke-direct {v0, v3, v2, v2, v1}, Ljavax/security/auth/login/LoginContext;-><init>(Ljava/lang/String;Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;Ljavax/security/auth/login/Configuration;)V

    .line 49
    .local v0, "lc":Ljavax/security/auth/login/LoginContext;
    invoke-virtual {v0}, Ljavax/security/auth/login/LoginContext;->login()V

    .line 52
    :try_start_0
    invoke-virtual {v0}, Ljavax/security/auth/login/LoginContext;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v1

    new-instance v3, Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;

    invoke-direct {v3, p0, v2}, Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;-><init>(Lorg/ietf/jgss/GSSManager;Lorg/apache/sshd/server/auth/gss/CredentialHelper$1;)V

    invoke-static {v1, v3}, Ljavax/security/auth/Subject;->doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ietf/jgss/GSSCredential;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lorg/ietf/jgss/GSSException;

    throw v2
.end method
