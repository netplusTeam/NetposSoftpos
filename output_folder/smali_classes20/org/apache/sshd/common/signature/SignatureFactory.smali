.class public interface abstract Lorg/apache/sshd/common/signature/SignatureFactory;
.super Ljava/lang/Object;
.source "SignatureFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/BuiltinFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/BuiltinFactory<",
        "Lorg/apache/sshd/common/signature/Signature;",
        ">;"
    }
.end annotation


# static fields
.field public static final ECC_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RSA_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP521:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP384:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP256:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/signature/SignatureFactory;->ECC_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;

    .line 56
    const-string v0, "rsa-sha2-512"

    const-string v1, "rsa-sha2-256"

    const-string v2, "ssh-rsa"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/signature/SignatureFactory;->RSA_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static resolvePreferredSignaturePosition(Ljava/util/List;ILjava/util/Map;)I
    .locals 7
    .param p1, "prefValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 167
    .local p0, "preferredOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "posMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    if-ltz p1, :cond_7

    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 171
    :cond_0
    const/4 v0, -0x1

    .line 172
    .local v0, "posValue":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    .local v2, "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 175
    .local v4, "order":I
    if-gez v4, :cond_2

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 181
    .local v5, "curIndex":Ljava/lang/Integer;
    if-ge v4, p1, :cond_3

    .line 182
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .local v6, "resIndex":I
    goto :goto_1

    .line 183
    .end local v6    # "resIndex":I
    :cond_3
    if-le v4, p1, :cond_1

    .line 184
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 190
    .restart local v6    # "resIndex":I
    :goto_1
    if-ltz v0, :cond_4

    if-ge v6, v0, :cond_5

    .line 191
    :cond_4
    move v0, v6

    .line 193
    .end local v2    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "order":I
    .end local v5    # "curIndex":Ljava/lang/Integer;
    .end local v6    # "resIndex":I
    :cond_5
    goto :goto_0

    .line 195
    :cond_6
    return v0

    .line 168
    .end local v0    # "posValue":I
    :cond_7
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static resolvePreferredSignaturePosition(Ljava/util/List;Lorg/apache/sshd/common/NamedFactory;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;)I"
        }
    .end annotation

    .line 120
    .local p0, "factories":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local p1, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    invoke-interface {p1}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "name":Ljava/lang/String;
    const-string v2, "ssh-rsa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    return v1

    .line 129
    :cond_1
    sget-object v3, Lorg/apache/sshd/common/signature/SignatureFactory;->RSA_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 130
    .local v3, "pos":I
    if-ltz v3, :cond_4

    .line 131
    new-instance v1, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 132
    .local v1, "posMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "index":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "count":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 133
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/NamedFactory;

    .line 134
    .local v6, "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    invoke-interface {v6}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "keyType":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getCanonicalKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "canonicalName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 137
    goto :goto_1

    .line 140
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v6    # "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    .end local v7    # "keyType":Ljava/lang/String;
    .end local v8    # "canonicalName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "index":I
    .end local v5    # "count":I
    :cond_3
    sget-object v2, Lorg/apache/sshd/common/signature/SignatureFactory;->RSA_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;

    invoke-static {v2, v3, v1}, Lorg/apache/sshd/common/signature/SignatureFactory;->resolvePreferredSignaturePosition(Ljava/util/List;ILjava/util/Map;)I

    move-result v2

    return v2

    .line 146
    .end local v1    # "posMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    sget-object v2, Lorg/apache/sshd/common/signature/SignatureFactory;->ECC_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 147
    .end local v3    # "pos":I
    .local v2, "pos":I
    if-ltz v2, :cond_7

    .line 148
    new-instance v1, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 149
    .restart local v1    # "posMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_2
    if-ge v3, v4, :cond_6

    .line 150
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sshd/common/NamedFactory;

    .line 151
    .local v5, "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    invoke-interface {v5}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "keyType":Ljava/lang/String;
    sget-object v7, Lorg/apache/sshd/common/signature/SignatureFactory;->ECC_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 153
    goto :goto_3

    .line 156
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v5    # "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    .end local v6    # "keyType":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 159
    .end local v3    # "index":I
    .end local v4    # "count":I
    :cond_6
    sget-object v3, Lorg/apache/sshd/common/signature/SignatureFactory;->ECC_SIGNATURE_TYPE_PREFERENCES:Ljava/util/List;

    invoke-static {v3, v2, v1}, Lorg/apache/sshd/common/signature/SignatureFactory;->resolvePreferredSignaturePosition(Ljava/util/List;ILjava/util/Map;)I

    move-result v3

    return v3

    .line 162
    .end local v1    # "posMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    return v1
.end method

.method public static resolveSignatureFactoriesProposal(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    .local p0, "provided":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p1, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/signature/SignatureFactory;->resolveSignatureFactoryNamesProposal(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static resolveSignatureFactoryNamesProposal(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    .local p0, "provided":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p1, "available":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 94
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v0, "providedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "providedType":Ljava/lang/String;
    nop

    .line 97
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getAllEquivalentKeyTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "equivTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 99
    .end local v2    # "providedType":Ljava/lang/String;
    .end local v3    # "equivTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 105
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 107
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "kt":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    add-int/lit8 v2, v2, -0x1

    .line 106
    .end local v3    # "kt":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    .end local v2    # "index":I
    :cond_4
    return-object v1

    .line 90
    .end local v0    # "providedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
