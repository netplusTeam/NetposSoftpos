.class public Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;
.super Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;
.source "OpenSSHKeyPairResourceParser.java"


# static fields
.field public static final AUTH_MAGIC:Ljava/lang/String; = "openssh-key-v1"

.field private static final AUTH_MAGIC_BYTES:[B

.field public static final BEGINNERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BEGIN_MARKER:Ljava/lang/String; = "BEGIN OPENSSH PRIVATE KEY"

.field private static final BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static final BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "**>;>;"
        }
    .end annotation
.end field

.field public static final ENDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final END_MARKER:Ljava/lang/String; = "END OPENSSH PRIVATE KEY"

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    nop

    .line 72
    const-string v0, "BEGIN OPENSSH PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BEGINNERS:Ljava/util/List;

    .line 75
    nop

    .line 76
    const-string v0, "END OPENSSH PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->ENDERS:Ljava/util/List;

    .line 79
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;

    .line 81
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "openssh-key-v1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->AUTH_MAGIC_BYTES:[B

    .line 82
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;

    .line 89
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHRSAPrivateKeyDecoder;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->registerPrivateKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;)V

    .line 90
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHDSSPrivateKeyEntryDecoder;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->registerPrivateKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;)V

    .line 92
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHECDSAPrivateKeyEntryDecoder;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->registerPrivateKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;)V

    .line 95
    :cond_0
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getOpenSSHEDDSAPrivateKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->registerPrivateKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;)V

    .line 98
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BEGINNERS:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->ENDERS:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public static getPrivateKeyEntryDecoder(Ljava/lang/Class;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 429
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-class v1, Ljava/security/Key;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 433
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v1

    .line 434
    :try_start_0
    sget-object v2, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    .line 435
    .local v3, "decoder":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    if-eqz v3, :cond_1

    .line 436
    monitor-exit v1

    return-object v3

    .line 440
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    .line 441
    .local v4, "dec":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    invoke-interface {v4}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v5

    .line 442
    .local v5, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v4}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v6

    .line 443
    .local v6, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 446
    .end local v4    # "dec":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    .end local v5    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    goto :goto_0

    .line 444
    .restart local v4    # "dec":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    .restart local v5    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    monitor-exit v1

    return-object v4

    .line 447
    .end local v3    # "decoder":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    .end local v4    # "dec":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    .end local v5    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    monitor-exit v1

    .line 449
    return-object v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 430
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static getPrivateKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 381
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v0

    .line 386
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    monitor-exit v0

    return-object v1

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPrivateKeyEntryDecoder(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;
    .locals 1
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Key;",
            ")",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 417
    if-nez p0, :cond_0

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->getPrivateKeyEntryDecoder(Ljava/lang/Class;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKeyEntryDecoder(Ljava/security/KeyPair;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;
    .locals 3
    .param p0, "kp"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyPair;",
            ")",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 399
    return-object v0

    .line 402
    :cond_0
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->getPrivateKeyEntryDecoder(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    move-result-object v1

    .line 403
    .local v1, "d1":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->getPrivateKeyEntryDecoder(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    move-result-object v2

    .line 404
    .local v2, "d2":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    if-ne v1, v2, :cond_1

    .line 405
    return-object v1

    .line 407
    :cond_1
    return-object v0
.end method

.method public static registerPrivateKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "**>;)V"
        }
    .end annotation

    .line 353
    .local p0, "decoder":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    const-string v0, "No decoder specified"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "No public key type declared"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 356
    .local v0, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "No private key type declared"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 357
    .local v1, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v2

    .line 358
    :try_start_0
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    nop

    .line 363
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v2

    const-string v3, "No supported key type"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 364
    .local v3, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v4, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v4

    .line 365
    :try_start_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 366
    .local v5, "n":Ljava/lang/String;
    sget-object v6, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    invoke-interface {v6, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    .line 367
    .local v6, "prev":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    nop

    .line 369
    goto :goto_0

    .line 372
    .end local v5    # "n":Ljava/lang/String;
    .end local v6    # "prev":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    :cond_0
    monitor-exit v4

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 360
    .end local v3    # "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method


# virtual methods
.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;
    .locals 24
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "stream"    # Ljava/io/InputStream;
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

    .line 111
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p5

    iget-object v0, v8, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v16

    .line 113
    .local v16, "debugEnabled":Z
    move-object/from16 v0, p6

    invoke-virtual {v8, v15, v13, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->validateStreamMagicMarker(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v11

    .line 115
    .end local p6    # "stream":Ljava/io/InputStream;
    .local v11, "stream":Ljava/io/InputStream;
    const/16 v0, 0x100

    invoke-static {v11, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "cipher":Ljava/lang/String;
    nop

    .line 117
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->resolveKdfOptions(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    move-result-object v9

    .line 118
    .local v9, "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;

    invoke-direct {v0, v10, v9}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;)V

    move-object v14, v0

    .line 119
    .local v14, "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    invoke-static {v11}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeInt(Ljava/io/InputStream;)I

    move-result v7

    .line 120
    .local v7, "numKeys":I
    if-gtz v7, :cond_1

    .line 121
    if-eqz v16, :cond_0

    .line 122
    iget-object v0, v8, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    const-string v1, "extractKeyPairs({}) no encoded keys for context={}"

    invoke-interface {v0, v1, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 127
    :cond_1
    const/4 v0, 0x3

    const/4 v6, 0x2

    const/16 v17, 0x1

    const/4 v5, 0x0

    if-eqz v16, :cond_2

    .line 128
    iget-object v1, v8, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v13, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v17

    aput-object v14, v2, v6

    const-string v3, "extractKeyPairs({}) decode {} keys using context={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v1

    .line 132
    .local v4, "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    iget-object v1, v8, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v18

    .line 133
    .local v18, "traceEnabled":Z
    const/4 v1, 0x1

    move v3, v1

    .local v3, "index":I
    :goto_0
    if-gt v3, v7, :cond_4

    .line 134
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v19, v3

    .end local v3    # "index":I
    .local v19, "index":I
    move-object/from16 v3, p2

    move-object/from16 p6, v10

    move-object v10, v4

    .end local v4    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .local v10, "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .local p6, "cipher":Ljava/lang/String;
    move-object v4, v14

    move-object/from16 v20, v9

    move v9, v5

    .end local v9    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .local v20, "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    move-object v5, v11

    move v0, v6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;

    move-result-object v1

    .line 135
    .local v1, "pubKey":Ljava/security/PublicKey;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v13, v2, v17

    const-string v3, "Empty public key #%d in %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    if-eqz v18, :cond_3

    .line 137
    iget-object v2, v8, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v9

    .line 138
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 137
    const-string v4, "extractKeyPairs({}) read public key #{}: {} {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    :cond_3
    const/4 v5, 0x3

    .line 140
    :goto_1
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v1    # "pubKey":Ljava/security/PublicKey;
    add-int/lit8 v3, v19, 0x1

    move v6, v0

    move v0, v5

    move v5, v9

    move-object v4, v10

    move-object/from16 v9, v20

    move-object/from16 v10, p6

    .end local v19    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local p6    # "cipher":Ljava/lang/String;
    .restart local v4    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v9    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .local v10, "cipher":Ljava/lang/String;
    :cond_4
    move/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 p6, v10

    move-object v10, v4

    move v9, v5

    .line 143
    .end local v3    # "index":I
    .end local v4    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v9    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .local v10, "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local p6    # "cipher":Ljava/lang/String;
    const v0, 0x3fff8

    invoke-static {v11, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 145
    .local v6, "privateData":[B
    :try_start_0
    invoke-virtual {v14}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->isEncrypted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    if-nez v0, :cond_5

    .line 146
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move/from16 v17, v7

    .end local v7    # "numKeys":I
    .local v17, "numKeys":I
    move-object v7, v0

    .line 147
    .local v7, "bais":Ljava/io/InputStream;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v5, v10

    move-object v8, v6

    .end local v6    # "privateData":[B
    .local v8, "privateData":[B
    move-object/from16 v6, p5

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->readPrivateKeys(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 147
    return-object v0

    .line 195
    .end local v7    # "bais":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v21, p6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move-object/from16 v19, v14

    move v11, v9

    goto/16 :goto_a

    .line 146
    .restart local v7    # "bais":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v1, v0

    .end local v7    # "bais":Ljava/io/InputStream;
    .end local v8    # "privateData":[B
    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "cipher":Ljava/lang/String;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 148
    .restart local v7    # "bais":Ljava/io/InputStream;
    .restart local v8    # "privateData":[B
    .restart local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .restart local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v16    # "debugEnabled":Z
    .restart local v17    # "numKeys":I
    .restart local v18    # "traceEnabled":Z
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "cipher":Ljava/lang/String;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "privateData":[B
    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "cipher":Ljava/lang/String;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    .restart local v6    # "privateData":[B
    .local v7, "numKeys":I
    .restart local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .restart local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v16    # "debugEnabled":Z
    .restart local v18    # "traceEnabled":Z
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "cipher":Ljava/lang/String;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-object v8, v6

    move/from16 v17, v7

    move-object/from16 v21, p6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move-object/from16 v19, v14

    move v11, v9

    .end local v6    # "privateData":[B
    .end local v7    # "numKeys":I
    .restart local v8    # "privateData":[B
    .restart local v17    # "numKeys":I
    goto/16 :goto_a

    .line 151
    .end local v8    # "privateData":[B
    .end local v17    # "numKeys":I
    .restart local v6    # "privateData":[B
    .restart local v7    # "numKeys":I
    :cond_5
    move-object v8, v6

    move/from16 v17, v7

    .end local v6    # "privateData":[B
    .end local v7    # "numKeys":I
    .restart local v8    # "privateData":[B
    .restart local v17    # "numKeys":I
    if-eqz v12, :cond_8

    .line 155
    const/4 v0, 0x0

    move v6, v0

    .line 156
    .local v6, "retryCount":I
    :goto_3
    :try_start_7
    invoke-interface {v12, v15, v13, v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->getPassword(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    move-object/from16 v19, v14

    .end local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .local v19, "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    move-object v14, v0

    .line 157
    .local v14, "pwd":Ljava/lang/String;
    :try_start_8
    invoke-static {v14}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    if-eqz v0, :cond_6

    .line 158
    :try_start_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 195
    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 158
    return-object v0

    .line 195
    .end local v6    # "retryCount":I
    .end local v14    # "pwd":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v21, p6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move v11, v9

    goto/16 :goto_a

    .line 163
    .restart local v6    # "retryCount":I
    .restart local v14    # "pwd":Ljava/lang/String;
    :cond_6
    nop

    .line 164
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->getCipherName()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    .line 163
    move v5, v9

    move-object/from16 v9, v20

    move-object/from16 v21, p6

    move-object/from16 v22, v10

    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local p6    # "cipher":Ljava/lang/String;
    .local v21, "cipher":Ljava/lang/String;
    .local v22, "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    move-object/from16 v10, p1

    move-object/from16 v23, v11

    .end local v11    # "stream":Ljava/io/InputStream;
    .local v23, "stream":Ljava/io/InputStream;
    move-object/from16 v11, p2

    move-object v12, v0

    move-object v4, v13

    move-object v13, v8

    :try_start_b
    invoke-interface/range {v9 .. v14}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;->decodePrivateKeyBytes(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-object v9, v0

    .line 165
    .local v9, "decryptedData":[B
    :try_start_c
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 166
    .local v7, "bais":Ljava/io/InputStream;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v10, v4

    move-object/from16 v4, v19

    move v11, v5

    move-object/from16 v5, v22

    move v12, v6

    .end local v6    # "retryCount":I
    .local v12, "retryCount":I
    move-object/from16 v6, p5

    :try_start_d
    invoke-virtual/range {v1 .. v7}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->readPrivateKeys(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 167
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 168
    .end local v7    # "bais":Ljava/io/InputStream;
    :try_start_f
    invoke-static {v9, v11}, Ljava/util/Arrays;->fill([BB)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 169
    nop

    .line 188
    .end local v9    # "decryptedData":[B
    nop

    .line 190
    const/4 v6, 0x0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    move-object v5, v14

    :try_start_10
    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->handleDecodeAttemptResult(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;ILjava/lang/String;Ljava/lang/Exception;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    .line 191
    const/4 v1, 0x0

    .line 192
    .end local v14    # "pwd":Ljava/lang/String;
    .local v1, "pwd":Ljava/lang/String;
    nop

    .line 195
    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 192
    return-object v0

    .line 168
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    .end local v1    # "pwd":Ljava/lang/String;
    .restart local v9    # "decryptedData":[B
    .restart local v14    # "pwd":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_5

    .line 165
    .restart local v7    # "bais":Ljava/io/InputStream;
    :catchall_7
    move-exception v0

    move-object v1, v0

    .end local v7    # "bais":Ljava/io/InputStream;
    .end local v8    # "privateData":[B
    .end local v9    # "decryptedData":[B
    .end local v12    # "retryCount":I
    .end local v14    # "pwd":Ljava/lang/String;
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 167
    .restart local v7    # "bais":Ljava/io/InputStream;
    .restart local v8    # "privateData":[B
    .restart local v9    # "decryptedData":[B
    .restart local v12    # "retryCount":I
    .restart local v14    # "pwd":Ljava/lang/String;
    .restart local v16    # "debugEnabled":Z
    .restart local v17    # "numKeys":I
    .restart local v18    # "traceEnabled":Z
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_4

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_13
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "privateData":[B
    .end local v9    # "decryptedData":[B
    .end local v12    # "retryCount":I
    .end local v14    # "pwd":Ljava/lang/String;
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 168
    .end local v7    # "bais":Ljava/io/InputStream;
    .restart local v6    # "retryCount":I
    .restart local v8    # "privateData":[B
    .restart local v9    # "decryptedData":[B
    .restart local v14    # "pwd":Ljava/lang/String;
    .restart local v16    # "debugEnabled":Z
    .restart local v17    # "numKeys":I
    .restart local v18    # "traceEnabled":Z
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_a
    move-exception v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    .end local v6    # "retryCount":I
    .restart local v12    # "retryCount":I
    :goto_5
    :try_start_14
    invoke-static {v9, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 169
    nop

    .end local v8    # "privateData":[B
    .end local v12    # "retryCount":I
    .end local v14    # "pwd":Ljava/lang/String;
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 170
    .end local v9    # "decryptedData":[B
    .restart local v8    # "privateData":[B
    .restart local v12    # "retryCount":I
    .restart local v14    # "pwd":Ljava/lang/String;
    .restart local v16    # "debugEnabled":Z
    .restart local v17    # "numKeys":I
    .restart local v18    # "traceEnabled":Z
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_8

    .line 195
    .end local v12    # "retryCount":I
    .end local v14    # "pwd":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object v10, v4

    move v11, v5

    goto/16 :goto_a

    .line 170
    .restart local v6    # "retryCount":I
    .restart local v14    # "pwd":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_6
    move-object v10, v4

    move v11, v5

    move v12, v6

    .end local v6    # "retryCount":I
    .restart local v12    # "retryCount":I
    goto :goto_8

    .end local v12    # "retryCount":I
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .restart local v6    # "retryCount":I
    .restart local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .restart local p6    # "cipher":Ljava/lang/String;
    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    :goto_7
    move-object/from16 v21, p6

    move v12, v6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move v11, v9

    .line 171
    .end local v6    # "retryCount":I
    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local p6    # "cipher":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "retryCount":I
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    :goto_8
    nop

    .line 172
    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    move-object v5, v14

    move-object v6, v0

    :try_start_15
    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->handleDecodeAttemptResult(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;ILjava/lang/String;Ljava/lang/Exception;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    move-result-object v1

    .line 173
    .local v1, "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    const/4 v2, 0x0

    .line 174
    .end local v14    # "pwd":Ljava/lang/String;
    .local v2, "pwd":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 175
    sget-object v3, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->TERMINATE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    move-object v1, v3

    .line 178
    :cond_7
    sget-object v3, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser$1;->$SwitchMap$org$apache$sshd$common$config$keys$FilePasswordProvider$ResourceDecodeResult:[I

    invoke-virtual {v1}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 186
    new-instance v3, Ljava/net/ProtocolException;

    goto :goto_9

    .line 184
    :pswitch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 195
    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 184
    return-object v3

    .line 182
    :pswitch_1
    nop

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .end local v2    # "pwd":Ljava/lang/String;
    add-int/lit8 v6, v12, 0x1

    move-object/from16 v12, p5

    move-object v13, v10

    move v9, v11

    move-object/from16 v14, v19

    move-object/from16 p6, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    .end local v12    # "retryCount":I
    .restart local v6    # "retryCount":I
    goto/16 :goto_3

    .line 180
    .end local v6    # "retryCount":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .restart local v2    # "pwd":Ljava/lang/String;
    .restart local v12    # "retryCount":I
    :pswitch_2
    nop

    .end local v8    # "privateData":[B
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_16
    throw v0

    .line 186
    .restart local v8    # "privateData":[B
    .restart local v16    # "debugEnabled":Z
    .restart local v17    # "numKeys":I
    .restart local v18    # "traceEnabled":Z
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_9
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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v8    # "privateData":[B
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v3

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v12    # "retryCount":I
    .restart local v8    # "privateData":[B
    .restart local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .restart local v16    # "debugEnabled":Z
    .restart local v17    # "numKeys":I
    .restart local v18    # "traceEnabled":Z
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "cipher":Ljava/lang/String;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_c
    move-exception v0

    move-object/from16 v21, p6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move v11, v9

    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local p6    # "cipher":Ljava/lang/String;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    goto :goto_a

    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .restart local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .local v14, "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local p6    # "cipher":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v21, p6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move-object/from16 v19, v14

    move v11, v9

    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local p6    # "cipher":Ljava/lang/String;
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    goto :goto_a

    .line 152
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .restart local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .restart local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local p6    # "cipher":Ljava/lang/String;
    :cond_8
    move-object/from16 v21, p6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move-object/from16 v19, v14

    move v11, v9

    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local p6    # "cipher":Ljava/lang/String;
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    new-instance v0, Ljavax/security/auth/login/FailedLoginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No password provider for encrypted key in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/login/FailedLoginException;-><init>(Ljava/lang/String;)V

    .end local v8    # "privateData":[B
    .end local v16    # "debugEnabled":Z
    .end local v17    # "numKeys":I
    .end local v18    # "traceEnabled":Z
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 195
    .restart local v8    # "privateData":[B
    .restart local v16    # "debugEnabled":Z
    .restart local v17    # "numKeys":I
    .restart local v18    # "traceEnabled":Z
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v20    # "kdfOptions":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_e
    move-exception v0

    goto :goto_a

    .end local v8    # "privateData":[B
    .end local v17    # "numKeys":I
    .end local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local v21    # "cipher":Ljava/lang/String;
    .end local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v23    # "stream":Ljava/io/InputStream;
    .local v6, "privateData":[B
    .local v7, "numKeys":I
    .restart local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v11    # "stream":Ljava/io/InputStream;
    .restart local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local p6    # "cipher":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-object/from16 v21, p6

    move-object v8, v6

    move/from16 v17, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v10, v13

    move-object/from16 v19, v14

    move v11, v9

    .end local v6    # "privateData":[B
    .end local v7    # "numKeys":I
    .end local v10    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v11    # "stream":Ljava/io/InputStream;
    .end local v14    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local p6    # "cipher":Ljava/lang/String;
    .restart local v8    # "privateData":[B
    .restart local v17    # "numKeys":I
    .restart local v19    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local v21    # "cipher":Ljava/lang/String;
    .restart local v22    # "publicKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v23    # "stream":Ljava/io/InputStream;
    :goto_a
    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 196
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readPrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/util/Map$Entry;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "context"    # Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .param p4, "keyType"    # Ljava/lang/String;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 303
    const/16 v0, 0x100

    invoke-static {p6, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "prvType":Ljava/lang/String;
    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->getPrivateKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    move-result-object v1

    .line 311
    .local v1, "decoder":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    const-string v2, ") in "

    if-eqz v1, :cond_1

    .line 315
    invoke-interface {v1, p1, v0, p5, p6}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 316
    .local v3, "prvKey":Ljava/security/PrivateKey;
    if-eqz v3, :cond_0

    .line 320
    const/16 v2, 0x400

    invoke-static {p6, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "comment":Ljava/lang/String;
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 317
    .end local v2    # "comment":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse key type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    .end local v3    # "prvKey":Ljava/security/PrivateKey;
    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported key type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    .end local v1    # "decoder":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<**>;"
    :cond_2
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatched private key type: , expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readPrivateKeys(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/util/List;
    .locals 21
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "context"    # Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
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

    .line 244
    .local p4, "publicKeys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/PublicKey;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static/range {p4 .. p4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    iget-object v0, v7, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v9

    .line 249
    .local v9, "traceEnabled":Z
    invoke-static/range {p6 .. p6}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeInt(Ljava/io/InputStream;)I

    move-result v10

    .line 250
    .local v10, "check1":I
    invoke-static/range {p6 .. p6}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeInt(Ljava/io/InputStream;)I

    move-result v11

    .line 251
    .local v11, "check2":I
    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v9, :cond_1

    .line 252
    iget-object v0, v7, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v14

    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    .line 252
    const-string v2, "readPrivateKeys({}) check1=0x{}, check2=0x{}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_1
    if-ne v10, v11, :cond_6

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 270
    .local v6, "keyPairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/PublicKey;

    .line 271
    .local v5, "pubKey":Ljava/security/PublicKey;
    invoke-static {v5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "pubType":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v17, v0, 0x1

    .line 273
    .local v17, "keyIndex":I
    if-eqz v9, :cond_2

    .line 274
    iget-object v0, v7, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v14

    .line 275
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v15

    aput-object v4, v1, v13

    .line 274
    const-string v2, "extractKeyPairs({}) read private key #{}: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_2
    nop

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v18, v4

    .end local v4    # "pubType":Ljava/lang/String;
    .local v18, "pubType":Ljava/lang/String;
    move-object/from16 v19, v5

    .end local v5    # "pubKey":Ljava/security/PublicKey;
    .local v19, "pubKey":Ljava/security/PublicKey;
    move-object/from16 v5, p5

    move-object/from16 v20, v6

    .end local v6    # "keyPairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    .local v20, "keyPairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->readPrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 280
    .local v0, "prvData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PrivateKey;Ljava/lang/String;>;"
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    .line 281
    .local v1, "prvKey":Ljava/security/PrivateKey;
    :goto_1
    new-array v2, v13, [Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    aput-object v8, v2, v15

    const-string v3, "Empty private key #%d in %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "prvType":Ljava/lang/String;
    move-object/from16 v3, v18

    .end local v18    # "pubType":Ljava/lang/String;
    .local v3, "pubType":Ljava/lang/String;
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v14

    aput-object v2, v6, v15

    .line 286
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v13

    aput-object v8, v6, v12

    .line 284
    const-string v12, "Mismatched public (%s) vs. private (%s) key type #%d in %s"

    invoke-static {v4, v12, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    if-eqz v9, :cond_4

    .line 289
    iget-object v4, v7, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v14

    .line 290
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v15

    aput-object v2, v5, v13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const/4 v12, 0x3

    aput-object v6, v5, v12

    .line 289
    const-string v6, "extractKeyPairs({}) add private key #{}: {} {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 288
    :cond_4
    const/4 v12, 0x3

    .line 292
    :goto_2
    new-instance v4, Ljava/security/KeyPair;

    move-object/from16 v5, v19

    .end local v19    # "pubKey":Ljava/security/PublicKey;
    .restart local v5    # "pubKey":Ljava/security/PublicKey;
    invoke-direct {v4, v5, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    move-object/from16 v6, v20

    .end local v20    # "keyPairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    .restart local v6    # "keyPairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v0    # "prvData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PrivateKey;Ljava/lang/String;>;"
    .end local v1    # "prvKey":Ljava/security/PrivateKey;
    .end local v2    # "prvType":Ljava/lang/String;
    .end local v3    # "pubType":Ljava/lang/String;
    .end local v5    # "pubKey":Ljava/security/PublicKey;
    .end local v17    # "keyIndex":I
    goto/16 :goto_0

    .line 295
    :cond_5
    return-object v6

    .line 265
    .end local v6    # "keyPairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    :cond_6
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched private key check values ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "context"    # Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .param p4, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 222
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v0, 0xfffe

    invoke-static {p4, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 223
    .local v0, "keyData":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 224
    .local v1, "bais":Ljava/io/InputStream;
    const/16 v2, 0x100

    :try_start_0
    invoke-static {v1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "keyType":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v3

    .line 226
    .local v3, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    if-eqz v3, :cond_0

    .line 230
    invoke-interface {v3, p1, v2, v1, p5}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 230
    return-object v4

    .line 227
    :cond_0
    :try_start_1
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported key type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keyData":[B
    .end local v1    # "bais":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local p4    # "stream":Ljava/io/InputStream;
    .end local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v2    # "keyType":Ljava/lang/String;
    .end local v3    # "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    .restart local v0    # "keyData":[B
    .restart local v1    # "bais":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local p4    # "stream":Ljava/io/InputStream;
    .restart local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    .end local v0    # "keyData":[B
    .end local v1    # "bais":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .end local p4    # "stream":Ljava/io/InputStream;
    .end local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    .restart local v0    # "keyData":[B
    .restart local v1    # "bais":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "context":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
    .restart local p4    # "stream":Ljava/io/InputStream;
    .restart local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method protected resolveKdfOptions(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 203
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x400

    invoke-static {p5, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "kdfName":Ljava/lang/String;
    const/16 v1, 0x7fff

    invoke-static {p5, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 207
    .local v1, "kdfOptions":[B
    const-string v2, "bcrypt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    new-instance v2, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;

    invoke-direct {v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;-><init>()V

    .local v2, "options":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    goto :goto_0

    .line 210
    .end local v2    # "options":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    :cond_0
    new-instance v2, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;

    invoke-direct {v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;-><init>()V

    .line 213
    .restart local v2    # "options":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    :goto_0
    invoke-interface {v2, v0, v1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;->initialize(Ljava/lang/String;[B)V

    .line 214
    return-object v2
.end method

.method protected validateStreamMagicMarker(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/io/InputStream;",
            ">(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "TS;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    .local p3, "stream":Ljava/io/InputStream;, "TS;"
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->AUTH_MAGIC_BYTES:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 328
    .local v1, "actual":[B
    invoke-static {p3, v1}, Lorg/apache/sshd/common/util/io/IoUtils;->readFully(Ljava/io/InputStream;[B)V

    .line 329
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 334
    .local v0, "eos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 338
    if-nez v0, :cond_0

    .line 342
    return-object p3

    .line 339
    :cond_0
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Missing EOS after magic marker value: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Premature EOF after magic marker value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    .end local v0    # "eos":I
    :cond_2
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Mismatched magic marker value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-static {v3, v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
