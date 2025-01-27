.class public Lcom/sleepycat/je/rep/ReplicationSSLConfig;
.super Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
.source "ReplicationSSLConfig.java"


# static fields
.field public static final SSL_AUTHENTICATOR:Ljava/lang/String; = "je.rep.ssl.authenticator"

.field public static final SSL_AUTHENTICATOR_CLASS:Ljava/lang/String; = "je.rep.ssl.authenticatorClass"

.field public static final SSL_AUTHENTICATOR_PARAMS:Ljava/lang/String; = "je.rep.ssl.authenticatorParams"

.field public static final SSL_CIPHER_SUITES:Ljava/lang/String; = "je.rep.ssl.cipherSuites"

.field public static final SSL_CLIENT_KEY_ALIAS:Ljava/lang/String; = "je.rep.ssl.clientKeyAlias"

.field public static final SSL_HOST_VERIFIER:Ljava/lang/String; = "je.rep.ssl.hostVerifier"

.field public static final SSL_HOST_VERIFIER_CLASS:Ljava/lang/String; = "je.rep.ssl.hostVerifierClass"

.field public static final SSL_HOST_VERIFIER_PARAMS:Ljava/lang/String; = "je.rep.ssl.hostVerifierParams"

.field public static final SSL_KEYSTORE_FILE:Ljava/lang/String; = "je.rep.ssl.keyStoreFile"

.field public static final SSL_KEYSTORE_PASSWORD:Ljava/lang/String; = "je.rep.ssl.keyStorePassword"

.field public static final SSL_KEYSTORE_PASSWORD_CLASS:Ljava/lang/String; = "je.rep.ssl.keyStorePasswordClass"

.field public static final SSL_KEYSTORE_PASSWORD_PARAMS:Ljava/lang/String; = "je.rep.ssl.keyStorePasswordParams"

.field public static final SSL_KEYSTORE_TYPE:Ljava/lang/String; = "je.rep.ssl.keyStoreType"

.field public static final SSL_PROTOCOLS:Ljava/lang/String; = "je.rep.ssl.protocols"

.field public static final SSL_SERVER_KEY_ALIAS:Ljava/lang/String; = "je.rep.ssl.serverKeyAlias"

.field public static final SSL_TRUSTSTORE_FILE:Ljava/lang/String; = "je.rep.ssl.trustStoreFile"

.field public static final SSL_TRUSTSTORE_TYPE:Ljava/lang/String; = "je.rep.ssl.trustStoreType"

.field private static repSSLProperties:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient sslKeyStorePasswordSource:Lcom/sleepycat/je/rep/net/PasswordSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 496
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    .line 497
    const-string v1, "je.rep.ssl.keyStoreFile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.keyStorePassword"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.keyStorePasswordClass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.keyStorePasswordParams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.keyStoreType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.serverKeyAlias"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.clientKeyAlias"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.trustStoreFile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.trustStoreType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.cipherSuites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.protocols"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.authenticator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.authenticatorClass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.authenticatorParams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.hostVerifier"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.hostVerifierClass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    const-string v1, "je.rep.ssl.hostVerifierParams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    .line 525
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    .line 1246
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    .line 1247
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;-><init>()V

    .line 537
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 552
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;-><init>(Ljava/util/Properties;)V

    .line 553
    return-void
.end method

.method static getRepSSLPropertySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1223
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->clone()Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    .locals 1

    .line 1182
    invoke-super {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->clone()Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    move-result-object v0

    return-object v0
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    .line 562
    const-string/jumbo v0, "ssl"

    return-object v0
.end method

.method public getSSLAuthenticator()Ljava/lang/String;
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLAuthenticatorClass()Ljava/lang/String;
    .locals 2

    .line 992
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLAuthenticatorParams()Ljava/lang/String;
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLCipherSuites()Ljava/lang/String;
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_CIPHER_SUITES:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLClientKeyAlias()Ljava/lang/String;
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_CLIENT_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLHostVerifier()Ljava/lang/String;
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLHostVerifierClass()Ljava/lang/String;
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLHostVerifierParams()Ljava/lang/String;
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLKeyStore()Ljava/lang/String;
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLKeyStorePassword()Ljava/lang/String;
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLKeyStorePasswordClass()Ljava/lang/String;
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLKeyStorePasswordParams()Ljava/lang/String;
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLKeyStorePasswordSource()Lcom/sleepycat/je/rep/net/PasswordSource;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->sslKeyStorePasswordSource:Lcom/sleepycat/je/rep/net/PasswordSource;

    return-object v0
.end method

.method public getSSLKeyStoreType()Ljava/lang/String;
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLProtocols()Ljava/lang/String;
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_PROTOCOLS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLServerKeyAlias()Ljava/lang/String;
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_SERVER_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLTrustStore()Ljava/lang/String;
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_TRUSTSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLTrustStoreType()Ljava/lang/String;
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_TRUSTSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isValidConfigParam(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;

    .line 1233
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->repSSLProperties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    const/4 v0, 0x1

    return v0

    .line 1236
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->isValidConfigParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSSLAuthenticator(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "authenticator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 969
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLAuthenticatorVoid(Ljava/lang/String;)V

    .line 970
    return-object p0
.end method

.method public setSSLAuthenticatorClass(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "authenticatorClass"    # Ljava/lang/String;

    .line 1007
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLAuthenticatorClassVoid(Ljava/lang/String;)V

    .line 1008
    return-object p0
.end method

.method public setSSLAuthenticatorClassVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "authenticatorClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1020
    return-void
.end method

.method public setSSLAuthenticatorParams(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "authenticatorParams"    # Ljava/lang/String;

    .line 1045
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLAuthenticatorParamsVoid(Ljava/lang/String;)V

    .line 1046
    return-object p0
.end method

.method public setSSLAuthenticatorParamsVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "authenticatorParams"    # Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1057
    return-void
.end method

.method public setSSLAuthenticatorVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "authenticator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_AUTHENTICATOR:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 982
    return-void
.end method

.method public setSSLCipherSuites(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "cipherSuites"    # Ljava/lang/String;

    .line 895
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLCipherSuitesVoid(Ljava/lang/String;)V

    .line 896
    return-object p0
.end method

.method public setSSLCipherSuitesVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "cipherSuites"    # Ljava/lang/String;

    .line 905
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_CIPHER_SUITES:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 907
    return-void
.end method

.method public setSSLClientKeyAlias(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .line 795
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLClientKeyAliasVoid(Ljava/lang/String;)V

    .line 796
    return-object p0
.end method

.method public setSSLClientKeyAliasVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_CLIENT_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 807
    return-void
.end method

.method public setSSLHostVerifier(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "hostVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLHostVerifierVoid(Ljava/lang/String;)V

    .line 1089
    return-object p0
.end method

.method public setSSLHostVerifierClass(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "hostVerifierClass"    # Ljava/lang/String;

    .line 1126
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLHostVerifierClassVoid(Ljava/lang/String;)V

    .line 1127
    return-object p0
.end method

.method public setSSLHostVerifierClassVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "hostVerifierClass"    # Ljava/lang/String;

    .line 1136
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1138
    return-void
.end method

.method public setSSLHostVerifierParams(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "hostVerifierParams"    # Ljava/lang/String;

    .line 1163
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLHostVerifierParamsVoid(Ljava/lang/String;)V

    .line 1164
    return-object p0
.end method

.method public setSSLHostVerifierParamsVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "hostVerifierParams"    # Ljava/lang/String;

    .line 1173
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1175
    return-void
.end method

.method public setSSLHostVerifierVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "hostVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_HOST_VERIFIER:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 1101
    return-void
.end method

.method public setSSLKeyStore(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .line 585
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLKeyStoreVoid(Ljava/lang/String;)V

    .line 586
    return-object p0
.end method

.method public setSSLKeyStorePassword(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 653
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLKeyStorePasswordVoid(Ljava/lang/String;)V

    .line 654
    return-object p0
.end method

.method public setSSLKeyStorePasswordClass(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 690
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLKeyStorePasswordClassVoid(Ljava/lang/String;)V

    .line 691
    return-object p0
.end method

.method public setSSLKeyStorePasswordClassVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 702
    return-void
.end method

.method public setSSLKeyStorePasswordParams(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "params"    # Ljava/lang/String;

    .line 727
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLKeyStorePasswordParamsVoid(Ljava/lang/String;)V

    .line 728
    return-object p0
.end method

.method public setSSLKeyStorePasswordParamsVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 739
    return-void
.end method

.method public setSSLKeyStorePasswordSource(Lcom/sleepycat/je/rep/net/PasswordSource;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "passwordSource"    # Lcom/sleepycat/je/rep/net/PasswordSource;

    .line 1203
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLKeyStorePasswordSourceVoid(Lcom/sleepycat/je/rep/net/PasswordSource;)V

    .line 1204
    return-object p0
.end method

.method public setSSLKeyStorePasswordSourceVoid(Lcom/sleepycat/je/rep/net/PasswordSource;)V
    .locals 0
    .param p1, "passwordSource"    # Lcom/sleepycat/je/rep/net/PasswordSource;

    .line 1213
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->sslKeyStorePasswordSource:Lcom/sleepycat/je/rep/net/PasswordSource;

    .line 1214
    return-void
.end method

.method public setSSLKeyStorePasswordVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_PASSWORD:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 665
    return-void
.end method

.method public setSSLKeyStoreType(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "keyStoreType"    # Ljava/lang/String;

    .line 619
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLKeyStoreTypeVoid(Ljava/lang/String;)V

    .line 620
    return-object p0
.end method

.method public setSSLKeyStoreTypeVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyStoreType"    # Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 631
    return-void
.end method

.method public setSSLKeyStoreVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_KEYSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 597
    return-void
.end method

.method public setSSLProtocols(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "protocols"    # Ljava/lang/String;

    .line 927
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLProtocolsVoid(Ljava/lang/String;)V

    .line 928
    return-object p0
.end method

.method public setSSLProtocolsVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "protocols"    # Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_PROTOCOLS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 939
    return-void
.end method

.method public setSSLServerKeyAlias(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .line 761
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLServerKeyAliasVoid(Ljava/lang/String;)V

    .line 762
    return-object p0
.end method

.method public setSSLServerKeyAliasVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_SERVER_KEY_ALIAS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 773
    return-void
.end method

.method public setSSLTrustStore(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .line 829
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLTrustStoreVoid(Ljava/lang/String;)V

    .line 830
    return-object p0
.end method

.method public setSSLTrustStoreType(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "trustStoreType"    # Ljava/lang/String;

    .line 863
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->setSSLTrustStoreTypeVoid(Ljava/lang/String;)V

    .line 864
    return-object p0
.end method

.method public setSSLTrustStoreTypeVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "trustStoreType"    # Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_TRUSTSTORE_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 875
    return-void
.end method

.method public setSSLTrustStoreVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SSL_TRUSTSTORE_FILE:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 841
    return-void
.end method
