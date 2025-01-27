.class public abstract Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;
.super Lorg/apache/sshd/common/keyprovider/AbstractKeyPairProvider;
.source "AbstractGeneratorHostKeyProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/AlgorithmNameProvider;
.implements Lorg/apache/sshd/common/keyprovider/KeySizeIndicator;


# static fields
.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final DEFAULT_ALLOWED_TO_OVERWRITE:Z = true


# instance fields
.field private algorithm:Ljava/lang/String;

.field private final keyPairHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private keySize:I

.field private keySpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private overwriteAllowed:Z

.field private path:Ljava/nio/file/Path;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractKeyPairProvider;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keyPairHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    const-string v0, "RSA"

    iput-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->algorithm:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->overwriteAllowed:Z

    .line 76
    return-void
.end method


# virtual methods
.method public clearLoadedKeys()V
    .locals 4

    .line 122
    iget-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keyPairHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keyPairHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 124
    .local v1, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    const-string v2, "clearLoadedKeys({}) removed keys"

    invoke-virtual {p0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_1
    return-void

    .line 124
    .end local v1    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected doReadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable<",
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

    .line 276
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->loadKeyPairIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doWriteKeyPair(Lorg/apache/sshd/common/NamedResource;Ljava/security/KeyPair;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method protected generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 303
    invoke-static {p1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 304
    .local v0, "generator":Ljava/security/KeyPairGenerator;
    iget-object v1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySpec:Ljava/security/spec/AlgorithmParameterSpec;

    const-string v2, "generateKeyPair("

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 306
    iget-object v1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") generating host key - spec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_0
    iget v1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySize:I

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 309
    iget-object v1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") generating host key - size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    const-string v1, "EC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    sget-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->SORTED_KEY_SIZE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 313
    .local v1, "numCurves":I
    sget-object v2, Lorg/apache/sshd/common/cipher/ECCurves;->SORTED_KEY_SIZE:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/ECCurves;

    .line 314
    .local v2, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 317
    .end local v1    # "numCurves":I
    .end local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    return-object v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySize:I

    return v0
.end method

.method public getKeySpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public isOverwriteAllowed()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->overwriteAllowed:Z

    return v0
.end method

.method protected loadFromFile(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 11
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "alg"    # Ljava/lang/String;
    .param p3, "keyPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
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

    .line 229
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v1

    .line 230
    .local v1, "options":[Ljava/nio/file/LinkOption;
    invoke-static {p3, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-static {p3, v1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    sget-object v2, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    invoke-virtual {p0, p1, p3, v2}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->readKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/lang/Iterable;

    move-result-object v2

    .line 235
    .local v2, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->head(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyPair;

    .line 236
    .local v4, "kp":Ljava/security/KeyPair;
    if-nez v4, :cond_1

    .line 237
    return-object v3

    .line 241
    :cond_1
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    .line 242
    .local v5, "key":Ljava/security/PublicKey;
    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "keyAlgorithm":Ljava/lang/String;
    const-string v7, "ECDSA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    const-string v6, "EC"

    goto :goto_0

    .line 245
    :cond_2
    const-string v7, "ED25519"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 246
    const-string v6, "EdDSA"

    .line 249
    :cond_3
    :goto_0
    invoke-static {p2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v7, :cond_5

    .line 250
    iget-object v3, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    iget-object v3, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p3, v7, v9

    .line 252
    invoke-static {v5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v0

    invoke-static {v5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 251
    const-string v0, "resolveKeyPair({}) loaded key={}-{}"

    invoke-interface {v3, v0, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_4
    return-object v2

    .line 258
    :cond_5
    iget-object v7, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 259
    iget-object v7, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p3, v10, v9

    aput-object p2, v10, v0

    aput-object v6, v10, v8

    const-string v0, "resolveKeyPair({}) mismatched loaded key algorithm: expected={}, loaded={}"

    invoke-interface {v7, v0, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_6
    invoke-static {p3}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 263
    return-object v3

    .line 231
    .end local v2    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    .end local v4    # "kp":Ljava/security/KeyPair;
    .end local v5    # "key":Ljava/security/PublicKey;
    .end local v6    # "keyAlgorithm":Ljava/lang/String;
    :cond_7
    :goto_1
    return-object v3
.end method

.method public bridge synthetic loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/util/List;
    .locals 9
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 135
    .local v0, "keyPath":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keyPairHolder:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 136
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keyPairHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    .local v2, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    if-nez v2, :cond_1

    .line 139
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->resolveKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object v3

    move-object v2, v3

    .line 140
    if-eqz v2, :cond_0

    .line 141
    iget-object v3, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keyPairHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :cond_0
    goto :goto_0

    .line 143
    :catchall_0
    move-exception v3

    .line 144
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v4, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    const-string v5, "loadKeys({}) Failed ({}) to resolve: {}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 144
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v4, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    iget-object v4, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadKeys("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") resolution failure details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 151
    .end local v2    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    goto :goto_3

    .restart local v2    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 155
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    move-object v1, v3

    goto :goto_2

    .line 156
    .end local p0    # "this":Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;
    :cond_2
    if-eqz v2, :cond_4

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 158
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyPair;

    .line 159
    .local v4, "kp":Ljava/security/KeyPair;
    if-nez v4, :cond_3

    .line 160
    goto :goto_1

    .line 163
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 164
    nop

    .end local v4    # "kp":Ljava/security/KeyPair;
    goto :goto_1

    .line 167
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v1

    .line 151
    .end local v1    # "pairs":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyPair;>;"
    .end local v2    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :catchall_2
    move-exception v2

    :goto_3
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 132
    .end local v0    # "keyPath":Ljava/nio/file/Path;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected varargs readKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/lang/Iterable;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyPath"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/lang/Iterable<",
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

    .line 268
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v0, p2, p3}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    .line 269
    .local v0, "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/resource/PathResource;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 270
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->doReadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;)Ljava/lang/Iterable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 270
    :cond_0
    return-object v2

    .line 269
    :catchall_0
    move-exception v2

    .end local v0    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyPath":Ljava/nio/file/Path;
    .end local p3    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    .restart local v0    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyPath":Ljava/nio/file/Path;
    .restart local p3    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method

.method protected resolveKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 17
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
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

    .line 172
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, ")["

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "alg":Ljava/lang/String;
    const-string v5, "resolveKeyPair("

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 175
    move-object/from16 v10, p1

    :try_start_0
    invoke-virtual {v1, v10, v4, v2}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->loadFromFile(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object v0

    .line 176
    .local v0, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->head(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/KeyPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .local v11, "kp":Ljava/security/KeyPair;
    if-eqz v11, :cond_0

    .line 178
    return-object v0

    .line 186
    .end local v0    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    .end local v11    # "kp":Ljava/security/KeyPair;
    :cond_0
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v11, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v2, v12, v9

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    .line 181
    const-string v13, "resolveKeyPair({}) Failed ({}) to load: {}"

    invoke-interface {v11, v13, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v11, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 184
    iget-object v11, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") load failure details"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    move-object/from16 v10, p1

    .line 190
    :cond_2
    :goto_0
    const/4 v11, 0x0

    .line 192
    .restart local v11    # "kp":Ljava/security/KeyPair;
    const/4 v12, 0x0

    const/4 v14, 0x4

    :try_start_1
    invoke-virtual {v1, v4}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    move-object v11, v0

    .line 193
    if-nez v11, :cond_3

    .line 194
    return-object v12

    .line 197
    :cond_3
    iget-object v0, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    invoke-virtual {v11}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 199
    .local v0, "key":Ljava/security/PublicKey;
    iget-object v15, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    const-string v12, "resolveKeyPair({}) generated {} key={}-{}"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v2, v13, v9

    aput-object v4, v13, v7

    .line 200
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v6

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v8

    .line 199
    invoke-interface {v15, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 210
    .end local v0    # "key":Ljava/security/PublicKey;
    :cond_4
    nop

    .line 212
    if-eqz v2, :cond_5

    .line 214
    :try_start_2
    new-array v0, v9, [Ljava/nio/file/OpenOption;

    invoke-virtual {v1, v11, v2, v0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->writeKeyPair(Ljava/security/KeyPair;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    goto :goto_1

    .line 215
    :catchall_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v12, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v9

    aput-object v2, v13, v7

    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v6

    aput-object v4, v13, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v14

    .line 216
    const-string v6, "resolveKeyPair({})[{}] Failed ({}) to write {} key: {}"

    invoke-interface {v12, v6, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v6, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    iget-object v6, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] write failure details"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v12, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v2, v13, v9

    aput-object v4, v13, v7

    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v6

    aput-object v4, v13, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v14

    .line 203
    const-string v6, "resolveKeyPair({})[{}] Failed ({}) to generate {} key-pair: {}"

    invoke-interface {v12, v6, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v6, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 206
    iget-object v6, v1, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] key-pair generation failure details"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    :cond_6
    const/4 v3, 0x0

    return-object v3
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->algorithm:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I

    .line 101
    iput p1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySize:I

    .line 102
    return-void
.end method

.method public setKeySpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "keySpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 109
    iput-object p1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->keySpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 110
    return-void
.end method

.method public setOverwriteAllowed(Z)V
    .locals 0
    .param p1, "overwriteAllowed"    # Z

    .line 117
    iput-boolean p1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->overwriteAllowed:Z

    .line 118
    return-void
.end method

.method public setPath(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 83
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->path:Ljava/nio/file/Path;

    .line 84
    return-void
.end method

.method protected varargs writeKeyPair(Ljava/security/KeyPair;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 9
    .param p1, "kp"    # Ljava/security/KeyPair;
    .param p2, "keyPath"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->isOverwriteAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 294
    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 293
    const-string v0, "Overwriting key ({}) is disabled: using throwaway {}: {}"

    invoke-interface {v1, v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 282
    :cond_2
    :goto_1
    new-instance v1, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v1, p2}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;)V

    .line 283
    .local v1, "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    :try_start_0
    invoke-static {p2, p3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 284
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0, v1, p1, v5}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->doWriteKeyPair(Lorg/apache/sshd/common/NamedResource;Ljava/security/KeyPair;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 291
    .end local v5    # "os":Ljava/io/OutputStream;
    :cond_3
    goto :goto_3

    .line 283
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    .end local v1    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local p1    # "kp":Ljava/security/KeyPair;
    .end local p2    # "keyPath":Ljava/nio/file/Path;
    .end local p3    # "options":[Ljava/nio/file/OpenOption;
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    .restart local v1    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local p1    # "kp":Ljava/security/KeyPair;
    .restart local p2    # "keyPath":Ljava/nio/file/Path;
    .restart local p3    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v7

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local p1    # "kp":Ljava/security/KeyPair;
    .end local p2    # "keyPath":Ljava/nio/file/Path;
    .end local p3    # "options":[Ljava/nio/file/OpenOption;
    :cond_4
    :goto_2
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v1    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .restart local p1    # "kp":Ljava/security/KeyPair;
    .restart local p2    # "keyPath":Ljava/nio/file/Path;
    .restart local p3    # "options":[Ljava/nio/file/OpenOption;
    :catchall_3
    move-exception v5

    .line 286
    .local v5, "e":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 287
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 286
    const-string/jumbo v0, "writeKeyPair({}) failed ({}) to write key {}: {}"

    invoke-interface {v6, v0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeKeyPair("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") write failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v1    # "location":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_3
    nop

    .line 296
    :goto_4
    return-void
.end method
