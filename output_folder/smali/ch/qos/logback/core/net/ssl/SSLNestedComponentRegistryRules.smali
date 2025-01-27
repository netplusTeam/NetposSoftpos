.class public Lch/qos/logback/core/net/ssl/SSLNestedComponentRegistryRules;
.super Ljava/lang/Object;
.source "SSLNestedComponentRegistryRules.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 3
    .param p0, "registry"    # Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    .line 27
    const-class v0, Lch/qos/logback/core/net/ssl/SSLComponent;

    const-class v1, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    const-string/jumbo v2, "ssl"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    const-class v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    const-class v1, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;

    const-string/jumbo v2, "parameters"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    const-class v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    const-class v1, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    const-string v2, "keyStore"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 30
    const-class v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    const-class v1, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    const-string/jumbo v2, "trustStore"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 31
    const-class v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    const-class v1, Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

    const-string v2, "keyManagerFactory"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    const-class v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    const-class v1, Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

    const-string/jumbo v2, "trustManagerFactory"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 33
    const-class v0, Lch/qos/logback/core/net/ssl/SSLConfiguration;

    const-class v1, Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

    const-string/jumbo v2, "secureRandom"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    return-void
.end method
