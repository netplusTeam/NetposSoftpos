.class public abstract Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;
.super Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;
.source "AbstractPEMResourceKeyPairParser.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;


# instance fields
.field private final algId:Ljava/lang/String;

.field private final algo:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "algo"    # Ljava/lang/String;
    .param p2, "algId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p3, "beginners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "enders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 65
    const-string v0, "No encryption algorithm provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;->algo:Ljava/lang/String;

    .line 66
    const-string v0, "No algorithm identifier provided"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;->algId:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method protected applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Z)[B
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .param p3, "encryptIt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "cipherName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->resolvePrivateKeyObfuscator()Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    move-result-object v1

    .line 210
    .local v1, "o":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    if-eqz v1, :cond_1

    .line 214
    if-eqz p3, :cond_0

    .line 215
    invoke-virtual {p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v2

    .line 216
    .local v2, "initVector":[B
    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-interface {v1, p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;->generateInitializationVector(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)[B

    move-result-object v2

    .line 218
    invoke-virtual {p2, v2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setInitVector([B)V

    .line 222
    .end local v2    # "initVector":[B
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;->applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Z)[B

    move-result-object v2

    return-object v2

    .line 211
    :cond_1
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decryptPrivateKeyData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")[encrypt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] unknown cipher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;Ljava/util/Map;)Ljava/util/Collection;
    .locals 22
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

    .line 86
    .local p6, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {p6 .. p6}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    .local v0, "encrypted":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 92
    .local v1, "initVector":[B
    const/4 v2, 0x0

    .line 93
    .local v2, "algInfo":Ljava/lang/String;
    const/4 v3, -0x1

    .line 94
    .local v3, "dataStartIndex":I
    invoke-static/range {p7 .. p7}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Map;)Z

    move-result v12

    .line 95
    .local v12, "hdrsAvailable":Z
    const/4 v4, 0x0

    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    .end local v0    # "encrypted":Ljava/lang/Boolean;
    .end local v1    # "initVector":[B
    .end local v2    # "algInfo":Ljava/lang/String;
    .local v4, "index":I
    .local v13, "encrypted":Ljava/lang/Boolean;
    .local v14, "initVector":[B
    .local v15, "algInfo":Ljava/lang/String;
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-ge v4, v0, :cond_a

    .line 96
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    goto/16 :goto_2

    .line 102
    :cond_1
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 103
    .local v1, "headerPos":I
    if-gez v1, :cond_2

    .line 104
    move v3, v4

    .line 105
    move v7, v3

    goto/16 :goto_3

    .line 108
    :cond_2
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "hdrName":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "hdrValue":Ljava/lang/String;
    if-nez v12, :cond_4

    .line 111
    invoke-static/range {p7 .. p7}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/util/TreeMap;

    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_1

    :cond_3
    move-object/from16 v6, p7

    .line 114
    .local v6, "accHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v6    # "accHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v6, "Proc-Type"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 118
    if-nez v13, :cond_5

    .line 122
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 123
    const-string v6, "ENCRYPTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v13, v6

    .end local v13    # "encrypted":Ljava/lang/Boolean;
    .local v6, "encrypted":Ljava/lang/Boolean;
    goto/16 :goto_2

    .line 119
    .end local v6    # "encrypted":Ljava/lang/Boolean;
    .restart local v13    # "encrypted":Ljava/lang/Boolean;
    :cond_5
    new-instance v6, Ljava/io/StreamCorruptedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Multiple encryption indicators in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 124
    :cond_6
    const-string v6, "DEK-Info"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 125
    if-nez v14, :cond_8

    if-nez v15, :cond_8

    .line 129
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 130
    .local v6, "infoPos":I
    if-ltz v6, :cond_7

    .line 135
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 137
    .end local v15    # "algInfo":Ljava/lang/String;
    .local v7, "algInfo":Ljava/lang/String;
    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "algInitVector":Ljava/lang/String;
    invoke-static {v8, v15}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->decodeHex(CLjava/lang/CharSequence;)[B

    move-result-object v8

    move-object v15, v7

    move-object v14, v8

    .end local v14    # "initVector":[B
    .local v8, "initVector":[B
    goto :goto_2

    .line 131
    .end local v7    # "algInfo":Ljava/lang/String;
    .end local v8    # "initVector":[B
    .restart local v14    # "initVector":[B
    .local v15, "algInfo":Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/io/StreamCorruptedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v16, v1

    .end local v1    # "headerPos":I
    .local v16, "headerPos":I
    const-string v1, ": Missing encryption data values separator in line \'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    .end local v6    # "infoPos":I
    .end local v16    # "headerPos":I
    .restart local v1    # "headerPos":I
    :cond_8
    move/from16 v16, v1

    .line 126
    .end local v1    # "headerPos":I
    .restart local v16    # "headerPos":I
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple encryption settings in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v16    # "headerPos":I
    .restart local v1    # "headerPos":I
    :cond_9
    move/from16 v16, v1

    .line 95
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "headerPos":I
    .end local v2    # "hdrName":Ljava/lang/String;
    .end local v5    # "hdrValue":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    move v7, v3

    .line 142
    .end local v3    # "dataStartIndex":I
    .end local v4    # "index":I
    .local v7, "dataStartIndex":I
    :goto_3
    if-ltz v7, :cond_10

    .line 146
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v16

    .line 147
    .local v16, "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v13, :cond_c

    if-nez v15, :cond_c

    if-eqz v14, :cond_b

    move/from16 v17, v7

    goto :goto_4

    .line 202
    :cond_b
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v17, v7

    .end local v7    # "dataStartIndex":I
    .local v17, "dataStartIndex":I
    move-object/from16 v7, v16

    move-object/from16 v8, p7

    invoke-super/range {v1 .. v8}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;->extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 147
    .end local v17    # "dataStartIndex":I
    .restart local v7    # "dataStartIndex":I
    :cond_c
    move/from16 v17, v7

    .line 148
    .end local v7    # "dataStartIndex":I
    .restart local v17    # "dataStartIndex":I
    :goto_4
    if-eqz v10, :cond_f

    .line 152
    const/4 v0, 0x0

    move v6, v0

    .line 153
    .local v6, "retryIndex":I
    :goto_5
    move-object/from16 v5, p1

    invoke-interface {v10, v5, v9, v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->getPassword(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "password":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 160
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    invoke-direct {v0, v15}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 161
    .local v3, "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setPassword(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3, v14}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setInitVector([B)V

    .line 164
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    move-object v1, v0

    .line 165
    .local v1, "encryptedData":[B
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, v0

    .line 167
    .local v2, "decodedData":[B
    :try_start_1
    invoke-static/range {v16 .. v16}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->extractDataBytes(Ljava/util/Collection;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v1, v0

    .line 168
    move-object/from16 v7, p0

    :try_start_2
    invoke-virtual {v7, v1, v3, v8}, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;->applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Z)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v2, v0

    .line 169
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v7, v0

    .line 170
    .local v7, "bais":Ljava/io/InputStream;
    move-object v10, v1

    .end local v1    # "encryptedData":[B
    .local v10, "encryptedData":[B
    move-object/from16 v1, p0

    move-object v11, v2

    .end local v2    # "decodedData":[B
    .local v11, "decodedData":[B
    move-object/from16 v2, p1

    move-object/from16 v18, v3

    .end local v3    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .local v18, "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    move-object/from16 v3, p2

    move-object/from16 v19, v4

    .end local v4    # "password":Ljava/lang/String;
    .local v19, "password":Ljava/lang/String;
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v20, v6

    .end local v6    # "retryIndex":I
    .local v20, "retryIndex":I
    move-object/from16 v6, p5

    move/from16 v21, v12

    move v12, v8

    .end local v12    # "hdrsAvailable":Z
    .local v21, "hdrsAvailable":Z
    move-object/from16 v8, p7

    :try_start_4
    invoke-virtual/range {v1 .. v8}, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;->extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    .local v0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    .end local v7    # "bais":Ljava/io/InputStream;
    :try_start_6
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 174
    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([BB)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 175
    nop

    .line 194
    .end local v10    # "encryptedData":[B
    .end local v11    # "decodedData":[B
    .end local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    nop

    .line 196
    const/4 v6, 0x0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v20

    move-object/from16 v5, v19

    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->handleDecodeAttemptResult(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;ILjava/lang/String;Ljava/lang/Exception;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    .line 197
    const/4 v1, 0x0

    .line 198
    .end local v19    # "password":Ljava/lang/String;
    .local v1, "password":Ljava/lang/String;
    return-object v0

    .line 173
    .end local v0    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    .end local v1    # "password":Ljava/lang/String;
    .restart local v10    # "encryptedData":[B
    .restart local v11    # "decodedData":[B
    .restart local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v19    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v2, v11

    goto :goto_7

    .line 169
    .restart local v7    # "bais":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v1, v0

    .end local v7    # "bais":Ljava/io/InputStream;
    .end local v10    # "encryptedData":[B
    .end local v11    # "decodedData":[B
    .end local v13    # "encrypted":Ljava/lang/Boolean;
    .end local v14    # "initVector":[B
    .end local v15    # "algInfo":Ljava/lang/String;
    .end local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "dataStartIndex":I
    .end local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 171
    .restart local v7    # "bais":Ljava/io/InputStream;
    .restart local v10    # "encryptedData":[B
    .restart local v11    # "decodedData":[B
    .restart local v13    # "encrypted":Ljava/lang/Boolean;
    .restart local v14    # "initVector":[B
    .restart local v15    # "algInfo":Ljava/lang/String;
    .restart local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "dataStartIndex":I
    .restart local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    .restart local v21    # "hdrsAvailable":Z
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "encryptedData":[B
    .end local v11    # "decodedData":[B
    .end local v13    # "encrypted":Ljava/lang/Boolean;
    .end local v14    # "initVector":[B
    .end local v15    # "algInfo":Ljava/lang/String;
    .end local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "dataStartIndex":I
    .end local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 173
    .end local v7    # "bais":Ljava/io/InputStream;
    .local v1, "encryptedData":[B
    .restart local v2    # "decodedData":[B
    .restart local v3    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v6    # "retryIndex":I
    .restart local v12    # "hdrsAvailable":Z
    .restart local v13    # "encrypted":Ljava/lang/Boolean;
    .restart local v14    # "initVector":[B
    .restart local v15    # "algInfo":Ljava/lang/String;
    .restart local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "dataStartIndex":I
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v12

    move v12, v8

    .end local v1    # "encryptedData":[B
    .end local v2    # "decodedData":[B
    .end local v3    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "retryIndex":I
    .end local v12    # "hdrsAvailable":Z
    .restart local v10    # "encryptedData":[B
    .restart local v11    # "decodedData":[B
    .restart local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    .restart local v21    # "hdrsAvailable":Z
    goto :goto_7

    .end local v10    # "encryptedData":[B
    .end local v11    # "decodedData":[B
    .end local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .restart local v1    # "encryptedData":[B
    .restart local v2    # "decodedData":[B
    .restart local v3    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v6    # "retryIndex":I
    .restart local v12    # "hdrsAvailable":Z
    :catchall_5
    move-exception v0

    move-object v10, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v12

    move v12, v8

    .end local v1    # "encryptedData":[B
    .end local v3    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "retryIndex":I
    .end local v12    # "hdrsAvailable":Z
    .restart local v10    # "encryptedData":[B
    .restart local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    .restart local v21    # "hdrsAvailable":Z
    goto :goto_7

    .end local v10    # "encryptedData":[B
    .end local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .restart local v1    # "encryptedData":[B
    .restart local v3    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v6    # "retryIndex":I
    .restart local v12    # "hdrsAvailable":Z
    :catchall_6
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v12

    move v12, v8

    .end local v3    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "retryIndex":I
    .end local v12    # "hdrsAvailable":Z
    .restart local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    .restart local v21    # "hdrsAvailable":Z
    :goto_7
    :try_start_a
    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 174
    invoke-static {v2, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 175
    nop

    .end local v13    # "encrypted":Ljava/lang/Boolean;
    .end local v14    # "initVector":[B
    .end local v15    # "algInfo":Ljava/lang/String;
    .end local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "dataStartIndex":I
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0

    .line 157
    .end local v1    # "encryptedData":[B
    .end local v2    # "decodedData":[B
    .end local v18    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v6    # "retryIndex":I
    .restart local v12    # "hdrsAvailable":Z
    .restart local v13    # "encrypted":Ljava/lang/Boolean;
    .restart local v14    # "initVector":[B
    .restart local v15    # "algInfo":Ljava/lang/String;
    .restart local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "dataStartIndex":I
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v12

    move v12, v8

    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "retryIndex":I
    .end local v12    # "hdrsAvailable":Z
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    .restart local v21    # "hdrsAvailable":Z
    new-instance v0, Ljavax/security/auth/login/FailedLoginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No password data for encrypted resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/login/FailedLoginException;-><init>(Ljava/lang/String;)V

    .end local v13    # "encrypted":Ljava/lang/Boolean;
    .end local v14    # "initVector":[B
    .end local v15    # "algInfo":Ljava/lang/String;
    .end local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "dataStartIndex":I
    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 176
    .restart local v13    # "encrypted":Ljava/lang/Boolean;
    .restart local v14    # "initVector":[B
    .restart local v15    # "algInfo":Ljava/lang/String;
    .restart local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "dataStartIndex":I
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    .restart local v21    # "hdrsAvailable":Z
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_9

    .end local v19    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v6    # "retryIndex":I
    .restart local v12    # "hdrsAvailable":Z
    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_8
    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v12

    move v12, v8

    .line 177
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "retryIndex":I
    .end local v12    # "hdrsAvailable":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    .restart local v21    # "hdrsAvailable":Z
    :goto_9
    nop

    .line 178
    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v20

    move-object/from16 v5, v19

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->handleDecodeAttemptResult(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;ILjava/lang/String;Ljava/lang/Exception;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    move-result-object v1

    .line 179
    .local v1, "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    const/4 v2, 0x0

    .line 180
    .end local v19    # "password":Ljava/lang/String;
    .local v2, "password":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 181
    sget-object v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->TERMINATE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    .line 184
    :cond_e
    sget-object v3, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser$1;->$SwitchMap$org$apache$sshd$common$config$keys$FilePasswordProvider$ResourceDecodeResult:[I

    invoke-virtual {v1}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 192
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported decode attempt result ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :pswitch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 188
    :pswitch_1
    nop

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .end local v2    # "password":Ljava/lang/String;
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move v8, v12

    move/from16 v12, v21

    .end local v20    # "retryIndex":I
    .restart local v6    # "retryIndex":I
    goto/16 :goto_5

    .line 186
    .end local v6    # "retryIndex":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .restart local v2    # "password":Ljava/lang/String;
    .restart local v20    # "retryIndex":I
    :pswitch_2
    throw v0

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .end local v2    # "password":Ljava/lang/String;
    .end local v20    # "retryIndex":I
    .end local v21    # "hdrsAvailable":Z
    .restart local v12    # "hdrsAvailable":Z
    :cond_f
    new-instance v0, Ljavax/security/auth/login/CredentialException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing password provider for encrypted resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/login/CredentialException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    .end local v16    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "dataStartIndex":I
    .local v7, "dataStartIndex":I
    :cond_10
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data lines (only headers or empty) found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;->algo:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmIdentifier()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;->algId:Ljava/lang/String;

    return-object v0
.end method
