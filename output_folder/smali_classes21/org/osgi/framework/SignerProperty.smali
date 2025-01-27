.class final Lorg/osgi/framework/SignerProperty;
.super Ljava/lang/Object;
.source "SignerProperty.java"


# instance fields
.field private final bundle:Lorg/osgi/framework/Bundle;

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/osgi/framework/SignerProperty;->pattern:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/SignerProperty;->bundle:Lorg/osgi/framework/Bundle;

    .line 44
    return-void
.end method

.method constructor <init>(Lorg/osgi/framework/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/osgi/framework/SignerProperty;->bundle:Lorg/osgi/framework/Bundle;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/SignerProperty;->pattern:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Lorg/osgi/framework/SignerProperty;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    return v1

    .line 71
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/SignerProperty;

    .line 72
    .local v0, "other":Lorg/osgi/framework/SignerProperty;
    iget-object v2, p0, Lorg/osgi/framework/SignerProperty;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/osgi/framework/SignerProperty;->bundle:Lorg/osgi/framework/Bundle;

    .line 73
    .local v3, "matchBundle":Lorg/osgi/framework/Bundle;
    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/osgi/framework/SignerProperty;->pattern:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/osgi/framework/SignerProperty;->pattern:Ljava/lang/String;

    .line 74
    .local v2, "matchPattern":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lorg/osgi/framework/Bundle;->getSignerCertificates(I)Ljava/util/Map;

    move-result-object v4

    .line 75
    .local v4, "signers":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 76
    .local v6, "signerCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v7, "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 78
    .local v9, "signerCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 81
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "signerCert":Ljava/security/cert/X509Certificate;
    :cond_3
    :try_start_0
    invoke-static {v2, v7}, Lorg/osgi/framework/FrameworkUtil;->matchDistinguishedNameChain(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_4

    .line 82
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_4
    nop

    .line 87
    .end local v6    # "signerCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 84
    .restart local v6    # "signerCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 85
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 88
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "signerCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 97
    const/16 v0, 0x1f

    return v0
.end method

.method isBundleSigned()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/osgi/framework/SignerProperty;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/osgi/framework/Bundle;->getSignerCertificates(I)Ljava/util/Map;

    move-result-object v0

    .line 110
    .local v0, "signers":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
