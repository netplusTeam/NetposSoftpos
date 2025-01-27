.class final Lio/netty/handler/ssl/CipherSuiteConverter;
.super Ljava/lang/Object;
.source "CipherSuiteConverter.java"


# static fields
.field private static final JAVA_AES_CBC_PATTERN:Ljava/util/regex/Pattern;

.field private static final JAVA_AES_PATTERN:Ljava/util/regex/Pattern;

.field private static final JAVA_CIPHERSUITE_PATTERN:Ljava/util/regex/Pattern;

.field private static final OPENSSL_AES_CBC_PATTERN:Ljava/util/regex/Pattern;

.field private static final OPENSSL_AES_PATTERN:Ljava/util/regex/Pattern;

.field private static final OPENSSL_CIPHERSUITE_PATTERN:Ljava/util/regex/Pattern;

.field private static final j2o:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j2oTls13:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final o2j:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final o2jTls13:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 39
    const-class v0, Lio/netty/handler/ssl/CipherSuiteConverter;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 54
    nop

    .line 55
    const-string v0, "^(?:TLS|SSL)_((?:(?!_WITH_).)+)_WITH_(.*)_(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->JAVA_CIPHERSUITE_PATTERN:Ljava/util/regex/Pattern;

    .line 69
    nop

    .line 71
    const-string v0, "^(?:((?:(?:EXP-)?(?:(?:DHE|EDH|ECDH|ECDHE|SRP|RSA)-(?:DSS|RSA|ECDSA|PSK)|(?:ADH|AECDH|KRB5|PSK|SRP)))|EXP)-)?(.*)-(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->OPENSSL_CIPHERSUITE_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "^(AES)_([0-9]+)_CBC$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->JAVA_AES_CBC_PATTERN:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "^(AES)_([0-9]+)_(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->JAVA_AES_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^(AES)([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->OPENSSL_AES_CBC_PATTERN:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "^(AES)([0-9]+)-(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->OPENSSL_AES_PATTERN:Ljava/util/regex/Pattern;

    .line 92
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->j2o:Ljava/util/concurrent/ConcurrentMap;

    .line 99
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->o2j:Ljava/util/concurrent/ConcurrentMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v0, "j2oTls13Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "TLS_AES_128_GCM_SHA256"

    const-string v2, "AEAD-AES128-GCM-SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v3, "TLS_AES_256_GCM_SHA384"

    const-string v4, "AEAD-AES256-GCM-SHA384"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v5, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v6, "AEAD-CHACHA20-POLY1305-SHA256"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    sput-object v7, Lio/netty/handler/ssl/CipherSuiteConverter;->j2oTls13:Ljava/util/Map;

    .line 111
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v7, "o2jTls13Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "TLS"

    invoke-static {v8, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v8, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v8, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v7, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v8, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v8, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {v8, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/CipherSuiteConverter;->o2jTls13:Ljava/util/Map;

    .line 119
    .end local v0    # "j2oTls13Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "o2jTls13Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheFromJava(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "javaCipherSuite"    # Ljava/lang/String;
    .param p1, "boringSSL"    # Z

    .line 162
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->j2oTls13:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "converted":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 164
    if-eqz p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1

    .line 167
    :cond_1
    invoke-static {p0, p1}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSslUncached(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "openSslCipherSuite":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 169
    const/4 v2, 0x0

    return-object v2

    .line 173
    :cond_2
    sget-object v2, Lio/netty/handler/ssl/CipherSuiteConverter;->j2o:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "javaCipherSuiteSuffix":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object v2, v4

    .line 178
    .local v2, "p2j":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, ""

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSL_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SSL"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TLS"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v4, Lio/netty/handler/ssl/CipherSuiteConverter;->o2j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v4, Lio/netty/handler/ssl/CipherSuiteConverter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Cipher suite mapping: {} => {}"

    invoke-interface {v4, v5, p0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-object v1
.end method

.method private static cacheFromOpenSsl(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "openSslCipherSuite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->o2jTls13:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 307
    .local v0, "converted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 308
    return-object v0

    .line 311
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJavaUncached0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "javaCipherSuiteSuffix":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 313
    const/4 v2, 0x0

    return-object v2

    .line 316
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSL_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "javaCipherSuiteSsl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TLS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "javaCipherSuiteTls":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 321
    .local v4, "p2j":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, ""

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v5, "SSL"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v5, "TLS"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v5, Lio/netty/handler/ssl/CipherSuiteConverter;->o2j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v5, Lio/netty/handler/ssl/CipherSuiteConverter;->j2o:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-interface {v5, v2, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v5, Lio/netty/handler/ssl/CipherSuiteConverter;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Cipher suite mapping: {} => {}"

    invoke-interface {v5, v6, v3, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    invoke-interface {v5, v6, v2, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    return-object v4
.end method

.method static clearCache()V
    .locals 1

    .line 125
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->j2o:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 126
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->o2j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 127
    return-void
.end method

.method static convertToCipherStrings(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V
    .locals 5
    .param p1, "cipherBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "cipherTLSv13Builder"    # Ljava/lang/StringBuilder;
    .param p3, "boringSSL"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .line 459
    .local p0, "cipherSuites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 460
    .local v1, "c":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 461
    goto :goto_3

    .line 464
    :cond_0
    invoke-static {v1, p3}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "converted":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 466
    move-object v2, v1

    .line 469
    :cond_1
    invoke-static {v2}, Lio/netty/handler/ssl/OpenSsl;->isCipherSuiteAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 473
    invoke-static {v2}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x3a

    if-nez v3, :cond_3

    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 477
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 474
    :cond_3
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    .end local v1    # "c":Ljava/lang/String;
    .end local v2    # "converted":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 470
    .restart local v1    # "c":Ljava/lang/String;
    .restart local v2    # "converted":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported cipher suite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    .end local v1    # "c":Ljava/lang/String;
    .end local v2    # "converted":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 483
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty cipher suites"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_7
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 486
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 488
    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 489
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 491
    :cond_9
    return-void
.end method

.method static isJ2OCached(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 133
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->j2o:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isO2JCached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 140
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->o2j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, "p2j":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    return v1

    .line 144
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "openSslCipherSuite"    # Ljava/lang/String;
    .param p1, "protocol"    # Ljava/lang/String;

    .line 283
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->o2j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 284
    .local v0, "p2j":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 285
    invoke-static {p0}, Lio/netty/handler/ssl/CipherSuiteConverter;->cacheFromOpenSsl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    return-object v1

    .line 293
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    .local v2, "javaCipherSuite":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 295
    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, "cipher":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 297
    return-object v1

    .line 299
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x5f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .end local v3    # "cipher":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private static toJavaBulkCipher(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "bulkCipher"    # Ljava/lang/String;
    .param p1, "export"    # Z

    .line 398
    const-string v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->OPENSSL_AES_CBC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 400
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "$1_$2_CBC"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 404
    :cond_0
    sget-object v1, Lio/netty/handler/ssl/CipherSuiteConverter;->OPENSSL_AES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    const-string v1, "$1_$2_$3"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 410
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    const-string v0, "DES-CBC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    const-string v0, "3DES_EDE_CBC"

    return-object v0

    .line 414
    :cond_2
    const-string v0, "RC4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    if-eqz p1, :cond_3

    .line 416
    const-string v0, "RC4_40"

    return-object v0

    .line 418
    :cond_3
    const-string v0, "RC4_128"

    return-object v0

    .line 422
    :cond_4
    const-string v0, "DES-CBC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 423
    if-eqz p1, :cond_5

    .line 424
    const-string v0, "DES_CBC_40"

    return-object v0

    .line 426
    :cond_5
    const-string v0, "DES_CBC"

    return-object v0

    .line 430
    :cond_6
    const-string v0, "RC2-CBC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 431
    if-eqz p1, :cond_7

    .line 432
    const-string v0, "RC2_CBC_40"

    return-object v0

    .line 434
    :cond_7
    const-string v0, "RC2_CBC"

    return-object v0

    .line 438
    :cond_8
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toJavaHandshakeAlgo(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "handshakeAlgo"    # Ljava/lang/String;
    .param p1, "export"    # Z

    .line 381
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string p0, "RSA"

    goto :goto_0

    .line 383
    :cond_0
    const-string v0, "ADH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const-string p0, "DH_anon"

    goto :goto_0

    .line 385
    :cond_1
    const-string v0, "AECDH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    const-string p0, "ECDH_anon"

    .line 389
    :cond_2
    :goto_0
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 390
    if-eqz p1, :cond_3

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_EXPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :cond_3
    return-object p0
.end method

.method private static toJavaHmacAlgo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "hmacAlgo"    # Ljava/lang/String;

    .line 448
    return-object p0
.end method

.method static toJavaUncached(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "openSslCipherSuite"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJavaUncached0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toJavaUncached0(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "openSslCipherSuite"    # Ljava/lang/String;
    .param p1, "checkTls13"    # Z

    .line 341
    if-eqz p1, :cond_0

    .line 342
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->o2jTls13:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 343
    .local v0, "converted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 344
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 348
    .end local v0    # "converted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->OPENSSL_CIPHERSUITE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 349
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    const/4 v1, 0x0

    return-object v1

    .line 353
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "handshakeAlgo":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 356
    const-string v1, ""

    .line 357
    const/4 v2, 0x0

    .local v2, "export":Z
    goto :goto_0

    .line 358
    .end local v2    # "export":Z
    :cond_2
    const-string v2, "EXP-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    const/4 v2, 0x1

    .restart local v2    # "export":Z
    goto :goto_0

    .line 361
    .end local v2    # "export":Z
    :cond_3
    const-string v2, "EXP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    const-string v1, ""

    .line 363
    const/4 v2, 0x1

    .restart local v2    # "export":Z
    goto :goto_0

    .line 365
    .end local v2    # "export":Z
    :cond_4
    const/4 v2, 0x0

    .line 368
    .restart local v2    # "export":Z
    :goto_0
    invoke-static {v1, v2}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJavaHandshakeAlgo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 369
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJavaBulkCipher(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "bulkCipher":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJavaHmacAlgo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "hmacAlgo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_WITH_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "javaCipherSuite":Ljava/lang/String;
    const-string v6, "CHACHA20"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_SHA256"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v5

    :goto_1
    return-object v6
.end method

.method static toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "javaCipherSuite"    # Ljava/lang/String;
    .param p1, "boringSSL"    # Z

    .line 154
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->j2o:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "converted":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    return-object v0

    .line 158
    :cond_0
    invoke-static {p0, p1}, Lio/netty/handler/ssl/CipherSuiteConverter;->cacheFromJava(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toOpenSslBulkCipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bulkCipher"    # Ljava/lang/String;

    .line 235
    const-string v0, "AES_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->JAVA_AES_CBC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 237
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "$1$2"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    :cond_0
    sget-object v1, Lio/netty/handler/ssl/CipherSuiteConverter;->JAVA_AES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "$1$2-$3"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 247
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    const-string v0, "3DES_EDE_CBC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    const-string v0, "DES-CBC3"

    return-object v0

    .line 251
    :cond_2
    const-string v0, "RC4_128"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "RC4_40"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 255
    :cond_3
    const-string v0, "DES40_CBC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "DES_CBC_40"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 259
    :cond_4
    const-string v0, "RC2_CBC_40"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    const-string v0, "RC2-CBC"

    return-object v0

    .line 263
    :cond_5
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_6
    :goto_0
    const-string v0, "DES-CBC"

    return-object v0

    .line 252
    :cond_7
    :goto_1
    const-string v0, "RC4"

    return-object v0
.end method

.method private static toOpenSslHandshakeAlgo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "handshakeAlgo"    # Ljava/lang/String;

    .line 212
    const-string v0, "_EXPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 213
    .local v0, "export":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 217
    :cond_0
    const-string v2, "RSA"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    const-string p0, ""

    goto :goto_0

    .line 219
    :cond_1
    const-string v2, "_anon"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 223
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    const-string p0, "EXP"

    goto :goto_1

    .line 227
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    :cond_4
    :goto_1
    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toOpenSslHmacAlgo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "hmacAlgo"    # Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method static toOpenSslUncached(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "javaCipherSuite"    # Ljava/lang/String;
    .param p1, "boringSSL"    # Z

    .line 189
    sget-object v0, Lio/netty/handler/ssl/CipherSuiteConverter;->j2oTls13:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, "converted":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 191
    if-eqz p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1

    .line 194
    :cond_1
    sget-object v1, Lio/netty/handler/ssl/CipherSuiteConverter;->JAVA_CIPHERSUITE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 195
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    const/4 v2, 0x0

    return-object v2

    .line 199
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSslHandshakeAlgo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "handshakeAlgo":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSslBulkCipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "bulkCipher":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSslHmacAlgo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "hmacAlgo":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0x2d

    if-eqz v5, :cond_3

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 204
    :cond_3
    const-string v5, "CHACHA20"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 207
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
