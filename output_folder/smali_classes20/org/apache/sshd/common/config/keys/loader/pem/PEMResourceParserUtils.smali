.class public final Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;
.super Ljava/lang/Object;
.source "PEMResourceParserUtils.java"


# static fields
.field private static final BY_ALGORITHM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final BY_OID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

.field private static final PROXY_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->PROXY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->BY_OID_MAP:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->BY_ALGORITHM_MAP:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->EMPTY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->PROXY_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->registerPEMResourceParser(Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;)V

    .line 70
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->registerPEMResourceParser(Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;)V

    .line 71
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->registerPEMResourceParser(Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;)V

    .line 72
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->registerPEMResourceParser(Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;)V

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->PROXY_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static getPEMResourceParserByAlgorithm(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 103
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->BY_ALGORITHM_MAP:Ljava/util/Map;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPEMResourceParserByOid(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;
    .locals 2
    .param p0, "oid"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->BY_OID_MAP:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;

    monitor-exit v0

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerPEMResourceParser(Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;)V
    .locals 4
    .param p0, "parser"    # Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;

    .line 80
    const-string v0, "No parser to register"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->BY_OID_MAP:Ljava/util/Map;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No OID value"

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->BY_ALGORITHM_MAP:Ljava/util/Map;

    monitor-enter v1

    .line 86
    :try_start_1
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No algorithm value"

    invoke-static {v0, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->PROXY_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->aggregate(Ljava/util/Collection;)Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
