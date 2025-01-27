.class public Lorg/osgi/service/condpermadmin/BundleSignerCondition;
.super Ljava/lang/Object;
.source "BundleSignerCondition.java"


# static fields
.field private static final CONDITION_TYPE:Ljava/lang/String; = "org.osgi.service.condpermadmin.BundleSignerCondition"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static getCondition(Lorg/osgi/framework/Bundle;Lorg/osgi/service/condpermadmin/ConditionInfo;)Lorg/osgi/service/condpermadmin/Condition;
    .locals 12
    .param p0, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p1, "info"    # Lorg/osgi/service/condpermadmin/ConditionInfo;

    .line 75
    invoke-virtual {p1}, Lorg/osgi/service/condpermadmin/ConditionInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.osgi.service.condpermadmin.BundleSignerCondition"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {p1}, Lorg/osgi/service/condpermadmin/ConditionInfo;->getArgs()[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "args":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    array-length v1, v0

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal number of args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    :goto_0
    invoke-interface {p0, v3}, Lorg/osgi/framework/Bundle;->getSignerCertificates(I)Ljava/util/Map;

    move-result-object v1

    .line 82
    .local v1, "signers":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    const/4 v4, 0x0

    .line 83
    .local v4, "match":Z
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 84
    .local v6, "signerCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v8, "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 86
    .local v10, "signer":Ljava/security/cert/X509Certificate;
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "signer":Ljava/security/cert/X509Certificate;
    :cond_2
    aget-object v9, v0, v7

    invoke-static {v9, v8}, Lorg/osgi/framework/FrameworkUtil;->matchDistinguishedNameChain(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 89
    const/4 v4, 0x1

    .line 90
    goto :goto_3

    .line 92
    .end local v6    # "signerCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    goto :goto_1

    .line 94
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    array-length v5, v0

    if-ne v5, v3, :cond_5

    aget-object v2, v0, v2

    const-string v3, "!"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    :cond_5
    move v2, v7

    .line 95
    .local v2, "negate":Z
    xor-int v3, v2, v4

    if-eqz v3, :cond_6

    sget-object v3, Lorg/osgi/service/condpermadmin/Condition;->TRUE:Lorg/osgi/service/condpermadmin/Condition;

    goto :goto_4

    :cond_6
    sget-object v3, Lorg/osgi/service/condpermadmin/Condition;->FALSE:Lorg/osgi/service/condpermadmin/Condition;

    :goto_4
    return-object v3

    .line 76
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "signers":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;Ljava/util/List<Ljava/security/cert/X509Certificate;>;>;"
    .end local v2    # "negate":Z
    .end local v4    # "match":Z
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConditionInfo must be of type \"org.osgi.service.condpermadmin.BundleSignerCondition\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
