.class public Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
.super Ljava/lang/Object;
.source "PrivateKeyEncryptionContext.java"

# interfaces
.implements Lorg/apache/sshd/common/auth/MutablePassword;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_CIPHER_MODE:Ljava/lang/String; = "CBC"

.field private static final OBFUSCATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cipherMode:Ljava/lang/String;

.field private cipherName:Ljava/lang/String;

.field private cipherType:Ljava/lang/String;

.field private initVector:[B

.field private transient obfuscator:Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

.field private password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext$$ExternalSyntheticLambda0;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    .line 48
    invoke-static {}, Lorg/apache/sshd/common/util/GenericUtils;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    new-instance v4, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext$$ExternalSyntheticLambda1;-><init>()V

    .line 46
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->OBFUSCATORS:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "CBC"

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherMode:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algInfo"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "CBC"

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherMode:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->parseAlgorithmInfo(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    .line 63
    return-void
.end method

.method public static final getRegisteredPrivateKeyObfuscator(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .locals 2
    .param p0, "cipherName"    # Ljava/lang/String;

    .line 163
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->OBFUSCATORS:Ljava/util/Map;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    monitor-exit v0

    return-object v1

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final getRegisteredPrivateKeyObfuscatorCiphers()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->OBFUSCATORS:Ljava/util/Map;

    monitor-enter v0

    .line 174
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 175
    .local v1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 176
    .end local v1    # "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final getRegisteredPrivateKeyObfuscators()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;",
            ">;"
        }
    .end annotation

    .line 180
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->OBFUSCATORS:Ljava/util/Map;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 182
    .local v1, "l":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 185
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v2

    .line 187
    .end local v1    # "l":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final initializeObfuscator(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .locals 1
    .param p1, "o"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;",
            ">(TC;",
            "Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 271
    .local p0, "context":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;, "TC;"
    invoke-interface {p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;->getCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setCipherName(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setPrivateKeyObfuscator(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;)V

    .line 273
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setPassword(Ljava/lang/String;)V

    .line 274
    return-object p0
.end method

.method static synthetic lambda$static$0()Ljava/util/TreeMap;
    .locals 2

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static final newPrivateKeyEncryptionContext(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .locals 1
    .param p0, "o"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .param p1, "password"    # Ljava/lang/String;

    .line 267
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;-><init>()V

    invoke-static {v0, p0, p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->initializeObfuscator(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    move-result-object v0

    return-object v0
.end method

.method public static final parseAlgorithmInfo(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .locals 5
    .param p1, "algInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;",
            ">(TC;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 255
    .local p0, "context":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;, "TC;"
    const-string v0, "No encryption algorithm data"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    const/16 v0, 0x2d

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "cipherData":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Bad encryption algorithm data: %s"

    invoke-static {v1, v4, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 260
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setCipherName(Ljava/lang/String;)V

    .line 261
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setCipherType(Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setCipherMode(Ljava/lang/String;)V

    .line 263
    return-object p0
.end method

.method public static registerPrivateKeyObfuscator(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .locals 2
    .param p0, "cipherName"    # Ljava/lang/String;
    .param p1, "o"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    .line 129
    const-string v0, "No cipher name"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    const-string v0, "No instance provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->OBFUSCATORS:Ljava/util/Map;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    monitor-exit v0

    return-object v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerPrivateKeyObfuscator(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .locals 1
    .param p0, "o"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    .line 125
    const-string v0, "No instance provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    invoke-interface {v0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;->getCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->registerPrivateKeyObfuscator(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    move-result-object v0

    return-object v0
.end method

.method public static unregisterPrivateKeyObfuscator(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .locals 2
    .param p0, "cipherName"    # Ljava/lang/String;

    .line 155
    const-string v0, "No cipher name"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->OBFUSCATORS:Ljava/util/Map;

    monitor-enter v0

    .line 158
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    monitor-exit v0

    return-object v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterPrivateKeyObfuscator(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;)Z
    .locals 4
    .param p0, "o"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    .line 138
    const-string v0, "No instance provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;->getCipherName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "cipherName":Ljava/lang/String;
    const-string v1, "No cipher name"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->OBFUSCATORS:Ljava/util/Map;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    .line 144
    .local v2, "prev":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    if-eq v2, p0, :cond_0

    .line 145
    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 148
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    nop

    .end local v2    # "prev":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    monitor-exit v1

    .line 151
    const/4 v1, 0x1

    return v1

    .line 149
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->clone()Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .locals 4

    .line 202
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    .line 203
    .local v0, "copy":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    invoke-virtual {v0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v1

    .line 204
    .local v1, "v":[B
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    .line 206
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setInitVector([B)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    return-object v0

    .line 209
    .end local v0    # "copy":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local v1    # "v":[B
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 225
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 226
    return v0

    .line 228
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 229
    return v1

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 232
    return v0

    .line 235
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    .line 236
    .local v2, "other":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-nez v3, :cond_3

    .line 237
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-nez v3, :cond_3

    .line 238
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-nez v3, :cond_3

    .line 239
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-nez v3, :cond_3

    .line 240
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 236
    :goto_0
    return v0
.end method

.method public getCipherMode()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherName:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherType:Ljava/lang/String;

    return-object v0
.end method

.method public getInitVector()[B
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->initVector:[B

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKeyObfuscator()Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->obfuscator:Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 216
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    .line 217
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherMode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    return v0
.end method

.method public parseAlgorithmInfo(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .locals 1
    .param p1, "algInfo"    # Ljava/lang/String;

    .line 196
    invoke-static {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->parseAlgorithmInfo(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    move-result-object v0

    return-object v0
.end method

.method public resolvePrivateKeyObfuscator()Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getPrivateKeyObfuscator()Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    move-result-object v0

    .line 117
    .local v0, "value":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
    if-eqz v0, :cond_0

    .line 118
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getRegisteredPrivateKeyObfuscator(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    move-result-object v1

    return-object v1
.end method

.method public setCipherMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherMode:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setCipherName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCipherType(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->cipherType:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public varargs setInitVector([B)V
    .locals 0
    .param p1, "values"    # [B

    .line 104
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->initVector:[B

    .line 105
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->password:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPrivateKeyObfuscator(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    .line 112
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->obfuscator:Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 245
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
