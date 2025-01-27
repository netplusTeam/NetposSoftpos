.class public Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "SSLParametersConfiguration.java"


# instance fields
.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private excludedCipherSuites:Ljava/lang/String;

.field private excludedProtocols:Ljava/lang/String;

.field private includedCipherSuites:Ljava/lang/String;

.field private includedProtocols:Ljava/lang/String;

.field private needClientAuth:Ljava/lang/Boolean;

.field private wantClientAuth:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method

.method private enabledCipherSuites([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "supportedCipherSuites"    # [Ljava/lang/String;
    .param p2, "defaultCipherSuites"    # [Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getIncludedCipherSuites()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getExcludedCipherSuites()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getIncludedCipherSuites()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getExcludedCipherSuites()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->includedStrings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    .line 96
    :goto_0
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    .local v3, "cipherSuite":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabled cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->addInfo(Ljava/lang/String;)V

    .line 96
    .end local v3    # "cipherSuite":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method private enabledProtocols([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "supportedProtocols"    # [Ljava/lang/String;
    .param p2, "defaultProtocols"    # [Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledProtocols:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getIncludedProtocols()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getExcludedProtocols()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledProtocols:[Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getIncludedProtocols()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->getExcludedProtocols()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->includedStrings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledProtocols:[Ljava/lang/String;

    .line 74
    :goto_0
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledProtocols:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 75
    .local v3, "protocol":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabled protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->addInfo(Ljava/lang/String;)V

    .line 74
    .end local v3    # "protocol":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method private includedStrings([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "defaults"    # [Ljava/lang/String;
    .param p2, "included"    # Ljava/lang/String;
    .param p3, "excluded"    # Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-direct {p0, p2}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->stringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/qos/logback/core/util/StringCollectionUtil;->retainMatching(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 119
    :cond_0
    if-eqz p3, :cond_1

    .line 120
    invoke-direct {p0, p3}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->stringToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/qos/logback/core/util/StringCollectionUtil;->removeMatching(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private stringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 131
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configure(Lch/qos/logback/core/net/ssl/SSLConfigurable;)V
    .locals 2
    .param p1, "socket"    # Lch/qos/logback/core/net/ssl/SSLConfigurable;

    .line 49
    invoke-interface {p1}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->getDefaultProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledProtocols([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->setEnabledProtocols([Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->enabledCipherSuites([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->isNeedClientAuth()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->isNeedClientAuth()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->setNeedClientAuth(Z)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->isWantClientAuth()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->isWantClientAuth()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/ssl/SSLConfigurable;->setWantClientAuth(Z)V

    .line 57
    :cond_1
    return-void
.end method

.method public getExcludedCipherSuites()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->excludedCipherSuites:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludedProtocols()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->excludedProtocols:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludedCipherSuites()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->includedCipherSuites:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludedProtocols()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->includedProtocols:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedClientAuth()Ljava/lang/Boolean;
    .locals 1

    .line 215
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->needClientAuth:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isWantClientAuth()Ljava/lang/Boolean;
    .locals 1

    .line 231
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->wantClientAuth:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setExcludedCipherSuites(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->excludedCipherSuites:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setExcludedProtocols(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocols"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->excludedProtocols:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setIncludedCipherSuites(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->includedCipherSuites:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setIncludedProtocols(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocols"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->includedProtocols:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setNeedClientAuth(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "needClientAuth"    # Ljava/lang/Boolean;

    .line 223
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->needClientAuth:Ljava/lang/Boolean;

    .line 224
    return-void
.end method

.method public setWantClientAuth(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "wantClientAuth"    # Ljava/lang/Boolean;

    .line 239
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLParametersConfiguration;->wantClientAuth:Ljava/lang/Boolean;

    .line 240
    return-void
.end method
