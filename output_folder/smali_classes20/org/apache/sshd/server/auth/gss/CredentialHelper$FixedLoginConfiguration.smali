.class final Lorg/apache/sshd/server/auth/gss/CredentialHelper$FixedLoginConfiguration;
.super Ljavax/security/auth/login/Configuration;
.source "CredentialHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/auth/gss/CredentialHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedLoginConfiguration"
.end annotation


# instance fields
.field private entry:Ljavax/security/auth/login/AppConfigurationEntry;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "spn"    # Ljava/lang/String;
    .param p2, "keytab"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljavax/security/auth/login/Configuration;-><init>()V

    .line 68
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 69
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "isInitiator"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "principal"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v1, "useKeyTab"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "storeKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p2, :cond_0

    .line 75
    const-string v1, "keyTab"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    new-instance v1, Ljavax/security/auth/login/AppConfigurationEntry;

    sget-object v2, Ljavax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;->REQUIRED:Ljavax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;

    const-string v3, "com.sun.security.auth.module.Krb5LoginModule"

    invoke-direct {v1, v3, v2, v0}, Ljavax/security/auth/login/AppConfigurationEntry;-><init>(Ljava/lang/String;Ljavax/security/auth/login/AppConfigurationEntry$LoginModuleControlFlag;Ljava/util/Map;)V

    iput-object v1, p0, Lorg/apache/sshd/server/auth/gss/CredentialHelper$FixedLoginConfiguration;->entry:Ljavax/security/auth/login/AppConfigurationEntry;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/auth/gss/CredentialHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/sshd/server/auth/gss/CredentialHelper$1;

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/server/auth/gss/CredentialHelper$FixedLoginConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppConfigurationEntry(Ljava/lang/String;)[Ljavax/security/auth/login/AppConfigurationEntry;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/security/auth/login/AppConfigurationEntry;

    iget-object v1, p0, Lorg/apache/sshd/server/auth/gss/CredentialHelper$FixedLoginConfiguration;->entry:Ljavax/security/auth/login/AppConfigurationEntry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .line 89
    return-void
.end method
