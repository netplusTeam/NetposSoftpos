.class public abstract Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractKeyPairResourceParser.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;


# instance fields
.field private final beginners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final endingMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "beginners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "enders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 59
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "No begin markers"

    invoke-static {p1, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->beginners:Ljava/util/List;

    .line 60
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "No end markers"

    invoke-static {p2, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->enders:Ljava/util/List;

    .line 61
    nop

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 61
    const-string v0, "Mismatched begin(%d)/end(%d) markers sizes"

    invoke-static {v1, v0, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->endingMarkers:Ljava/util/List;

    .line 66
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 67
    return-void
.end method


# virtual methods
.method public canExtractKeyPairs(Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Z
    .locals 1
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->getBeginners()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->containsMarkerLine(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public abstract extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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
.end method

.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;Ljava/util/Map;)Ljava/util/Collection;
    .locals 11
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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

    .line 166
    .local p6, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p6 .. p6}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->extractDataBytes(Ljava/util/Collection;)[B

    move-result-object v9

    .line 168
    .local v9, "dataBytes":[B
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v7, v9

    move-object/from16 v8, p7

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[BLjava/util/Map;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 168
    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 171
    throw v1
.end method

.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[BLjava/util/Map;)Ljava/util/Collection;
    .locals 11
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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

    .line 194
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, p0

    iget-object v0, v9, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->getSimplifiedLogger()Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const/16 v4, 0x3a

    const/16 v5, 0x10

    move-object v3, p3

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;CI[B)V

    .line 198
    :cond_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v10, p6

    invoke-direct {v7, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    .local v7, "bais":Ljava/io/InputStream;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 199
    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v7    # "bais":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "bytes":[B
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .restart local v7    # "bais":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "bytes":[B
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public getBeginners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->beginners:Ljava/util/List;

    return-object v0
.end method

.method public getEnders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->enders:Ljava/util/List;

    return-object v0
.end method

.method public getEndingMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->endingMarkers:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$new$0$org-apache-sshd-common-config-keys-loader-AbstractKeyPairResourceParser(Ljava/lang/String;)V
    .locals 2
    .param p1, "m"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->endingMarkers:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .locals 23
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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

    .line 96
    .local p4, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "keyPairs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->getBeginners()Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, "beginMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->getEndingMarkers()Ljava/util/List;

    move-result-object v3

    .line 99
    .local v3, "endMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0, v2}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->findMarkerLine(Ljava/util/List;Ljava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v4

    .local v4, "markerPos":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v4, :cond_5

    .line 100
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 101
    .local v5, "startIndex":I
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    .local v6, "startLine":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 105
    .local v15, "markerIndex":I
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/util/List;

    .line 106
    .local v14, "ender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v5, v14}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->findMarkerLine(Ljava/util/List;ILjava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v4

    .line 107
    if-eqz v4, :cond_4

    .line 111
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 112
    .local v13, "endIndex":I
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 113
    .local v16, "endLine":Ljava/lang/String;
    nop

    .line 115
    invoke-interface {v0, v5, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    .line 114
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v6

    move-object/from16 v11, v16

    invoke-virtual/range {v7 .. v12}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->separateDataLinesFromHeaders(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map$Entry;

    move-result-object v17

    .line 116
    .local v17, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;+Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Ljava/util/Map;

    .line 117
    .local v18, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Ljava/util/List;

    .line 118
    .local v19, "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v19, :cond_0

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v20, v7

    goto :goto_1

    :cond_0
    move-object/from16 v20, v19

    :goto_1
    if-nez v18, :cond_1

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v21, v7

    goto :goto_2

    :cond_1
    move-object/from16 v21, v18

    .line 118
    :goto_2
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v10, v6

    move-object/from16 v11, v16

    move-object/from16 v12, p3

    move/from16 v22, v13

    .end local v13    # "endIndex":I
    .local v22, "endIndex":I
    move-object/from16 v13, v20

    move-object/from16 v20, v3

    move-object v3, v14

    .end local v14    # "ender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "ender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "endMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v14, v21

    invoke-virtual/range {v7 .. v14}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v7

    .line 122
    .local v7, "kps":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    invoke-static {v7}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 123
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 124
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v1, v8

    goto :goto_3

    .line 126
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_3
    :goto_3
    add-int/lit8 v13, v22, 0x1

    invoke-static {v0, v13, v2}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->findMarkerLine(Ljava/util/List;ILjava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v4

    .line 132
    .end local v3    # "ender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "startIndex":I
    .end local v6    # "startLine":Ljava/lang/String;
    .end local v7    # "kps":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    .end local v15    # "markerIndex":I
    .end local v16    # "endLine":Ljava/lang/String;
    .end local v17    # "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;+Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "endIndex":I
    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 108
    .end local v20    # "endMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v3, "endMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v5    # "startIndex":I
    .restart local v6    # "startLine":Ljava/lang/String;
    .restart local v14    # "ender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "markerIndex":I
    :cond_4
    move-object/from16 v20, v3

    move-object v3, v14

    .end local v14    # "ender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "ender":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "endMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/io/StreamCorruptedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing end marker ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") after line #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    .end local v4    # "markerPos":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "startIndex":I
    .end local v6    # "startLine":Ljava/lang/String;
    .end local v15    # "markerIndex":I
    .end local v20    # "endMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v3, "endMarkers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    return-object v1
.end method

.method protected separateDataLinesFromHeaders(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "startLine"    # Ljava/lang/String;
    .param p4, "endLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map$Entry<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 140
    .local p5, "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
