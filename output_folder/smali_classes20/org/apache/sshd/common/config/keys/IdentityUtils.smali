.class public final Lorg/apache/sshd/common/config/keys/IdentityUtils;
.super Ljava/lang/Object;
.source "IdentityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/config/keys/IdentityUtils$LazyDefaultUserHomeFolderHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createKeyPairProvider(Ljava/util/Map;Z)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 3
    .param p1, "supportedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;Z)",
            "Lorg/apache/sshd/common/keyprovider/KeyPairProvider;"
        }
    .end annotation

    .line 95
    .local p0, "ids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/KeyPair;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    return-object v1

    .line 99
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 100
    .local v0, "pairsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/KeyPair;>;"
    new-instance v2, Lorg/apache/sshd/common/config/keys/IdentityUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lorg/apache/sshd/common/config/keys/IdentityUtils$$ExternalSyntheticLambda0;-><init>(ZLjava/util/Map;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 121
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    return-object v1

    .line 124
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static getIdentityFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method public static getUserHomeFolder()Ljava/nio/file/Path;
    .locals 1

    .line 66
    invoke-static {}, Lorg/apache/sshd/common/config/keys/IdentityUtils$LazyDefaultUserHomeFolderHolder;->access$000()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createKeyPairProvider$0(ZLjava/util/Map;Ljava/lang/String;Ljava/security/KeyPair;)V
    .locals 3
    .param p0, "supportedOnly"    # Z
    .param p1, "pairsMap"    # Ljava/util/Map;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "kp"    # Ljava/security/KeyPair;

    .line 101
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    move-result-object v0

    .line 102
    .local v0, "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    if-nez v0, :cond_0

    .line 103
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->fromKeyPair(Ljava/security/KeyPair;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    move-result-object v0

    .line 106
    :cond_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->isSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    :cond_1
    return-void

    .line 110
    :cond_2
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "keyType":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    return-void

    .line 115
    :cond_3
    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    .line 116
    .local v2, "prev":Ljava/security/KeyPair;
    nop

    .line 117
    return-void
.end method

.method public static varargs loadIdentities(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Map;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/OpenOption;)Ljava/util/NavigableMap;
    .locals 16
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/nio/file/Path;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    .local p1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v1, v0

    .line 152
    .local v1, "ids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Ljava/security/KeyPair;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    .local v2, "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 155
    .local v4, "path":Ljava/nio/file/Path;
    new-instance v5, Lorg/apache/sshd/common/util/io/resource/PathResource;

    move-object/from16 v6, p3

    invoke-direct {v5, v4, v6}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    .line 157
    .local v5, "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/resource/PathResource;->openInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 158
    .local v7, "inputStream":Ljava/io/InputStream;
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    :try_start_0
    invoke-static {v8, v5, v7, v9}, Lorg/apache/sshd/common/util/security/SecurityUtils;->loadKeyPairIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .local v10, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 161
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :cond_1
    if-nez v10, :cond_2

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/KeyPair;

    .line 166
    .local v11, "kp":Ljava/security/KeyPair;
    invoke-interface {v1, v3, v11}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/KeyPair;

    .line 167
    .local v12, "prev":Ljava/security/KeyPair;
    const/4 v14, 0x0

    if-nez v12, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    move v15, v14

    :goto_2
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const-string v14, "Multiple keys for type=%s due to %s"

    invoke-static {v15, v14, v13}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .end local v11    # "kp":Ljava/security/KeyPair;
    .end local v12    # "prev":Ljava/security/KeyPair;
    goto :goto_1

    .line 169
    .end local v2    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local v10    # "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :cond_4
    goto :goto_0

    .line 157
    .restart local v2    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "path":Ljava/nio/file/Path;
    .restart local v5    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v10, v0

    .end local v1    # "ids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Ljava/security/KeyPair;>;"
    .end local v2    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    .end local p2    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p3    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .restart local v1    # "ids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Ljava/security/KeyPair;>;"
    .restart local v2    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "path":Ljava/nio/file/Path;
    .restart local v5    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    .restart local p2    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p3    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v0

    move-object v11, v0

    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v12, v0

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v11

    .line 171
    .end local v2    # "pe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/nio/file/Path;>;"
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :cond_6
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v6, p3

    return-object v1
.end method
