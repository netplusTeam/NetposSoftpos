.class public Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;
.super Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;
.source "KnownHostsServerKeyVerifier.java"

# interfaces
.implements Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
.implements Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    }
.end annotation


# static fields
.field public static final KNOWN_HOSTS_FILE_OPTION:Ljava/lang/String; = "UserKnownHostsFile"

.field public static final STRICT_CHECKING_OPTION:Ljava/lang/String; = "StrictHostKeyChecking"


# instance fields
.field private final delegate:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

.field private final keysHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private modKeyAcceptor:Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;

.field protected final updateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "delegate"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .param p2, "file"    # Ljava/nio/file/Path;

    .line 126
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;-><init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 127
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 2
    .param p1, "delegate"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .param p2, "file"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;

    .line 130
    invoke-direct {p0, p2, p3}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->updateLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    const-string v0, "No delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    iput-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->delegate:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 132
    return-void
.end method


# virtual methods
.method protected acceptIncompleteHostKeys(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;
    .param p4, "reason"    # Ljava/lang/Throwable;

    .line 549
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 550
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 549
    const-string v2, "Failed ({}) to reload server keys from {}: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reload failure details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 554
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->acceptUnknownHostKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z

    move-result v0

    return v0
.end method

.method protected acceptKnownHostEntries(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/util/Collection;)Z
    .locals 19
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            "Ljava/security/PublicKey;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;)Z"
        }
    .end annotation

    .line 266
    .local p4, "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual {v9, v10, v11, v13}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->findKnownHostEntry(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/util/Collection;)Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;

    move-result-object v14

    .line 267
    .local v14, "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    if-nez v14, :cond_0

    .line 268
    invoke-virtual/range {p0 .. p3}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->acceptUnknownHostKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z

    move-result v0

    return v0

    .line 271
    :cond_0
    invoke-virtual {v14}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->getHostEntry()Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v15

    .line 272
    .local v15, "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    invoke-virtual {v14}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->getServerKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 273
    .local v8, "expected":Ljava/security/PublicKey;
    invoke-static {v8, v12}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v9, v10, v11, v12, v15}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->acceptKnownHostEntry(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;)Z

    move-result v0

    return v0

    .line 278
    :cond_1
    const/16 v16, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v8

    move-object/from16 v6, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->acceptModifiedServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 279
    return v7

    .line 289
    :cond_2
    nop

    .line 291
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getPath()Ljava/nio/file/Path;

    move-result-object v17

    .line 293
    .local v17, "file":Ljava/nio/file/Path;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->updateModifiedServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    move-object/from16 v18, v8

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v8

    .end local v8    # "expected":Ljava/security/PublicKey;
    .local v18, "expected":Ljava/security/PublicKey;
    move-object v8, v1

    .line 295
    .local v8, "t":Ljava/lang/Throwable;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->handleModifiedServerKeyUpdateFailure(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 298
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_0
    return v16

    .line 281
    .end local v17    # "file":Ljava/nio/file/Path;
    .end local v18    # "expected":Ljava/security/PublicKey;
    .local v8, "expected":Ljava/security/PublicKey;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    move-object v1, v0

    .end local v8    # "expected":Ljava/security/PublicKey;
    .restart local v18    # "expected":Ljava/security/PublicKey;
    move-object v0, v1

    .line 282
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, v9, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v7

    aput-object v11, v2, v16

    const/4 v3, 0x2

    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 282
    const-string v3, "acceptKnownHostEntries({})[{}] failed ({}) to accept modified server key: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-object v1, v9, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, v9, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptKnownHostEntries("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] modified server key acceptance failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :cond_3
    return v7
.end method

.method protected acceptKnownHostEntry(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;)Z
    .locals 7
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;
    .param p4, "entry"    # Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    .line 478
    if-nez p4, :cond_0

    .line 479
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->acceptUnknownHostKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z

    move-result v0

    return v0

    .line 482
    :cond_0
    invoke-virtual {p4}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getMarker()Ljava/lang/String;

    move-result-object v0

    const-string v1, "revoked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    aput-object p2, v6, v4

    .line 484
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {p4}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getMarker()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 483
    const-string v1, "acceptKnownHostEntry({})[{}] key={}-{} marked as {}"

    invoke-interface {v0, v1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    return v5

    .line 488
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    .line 490
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 489
    const-string v2, "acceptKnownHostEntry({})[{}] matched key={}-{}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_2
    return v4
.end method

.method public acceptModifiedServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 7
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "entry"    # Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .param p4, "expected"    # Ljava/security/PublicKey;
    .param p5, "actual"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getModifiedServerKeyAcceptor()Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;

    move-result-object v6

    .line 772
    .local v6, "acceptor":Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;
    if-eqz v6, :cond_0

    .line 773
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;->acceptModifiedServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    return v0

    .line 776
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v3, 0x2

    aput-object p3, v1, v3

    const/4 v3, 0x3

    .line 778
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 779
    invoke-static {p5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    invoke-static {p5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 776
    const-string v3, "acceptModifiedServerKey({}) mismatched keys presented by {} for entry={}: expected={}-{}, actual={}-{}"

    invoke-interface {v0, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    return v2
.end method

.method protected acceptUnknownHostKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z
    .locals 10
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;

    .line 570
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    const/4 v4, 0x2

    .line 572
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 571
    const-string v4, "acceptUnknownHostKey({}) host={}, key={}"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->delegate:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;->verifyServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 577
    .local v0, "file":Ljava/nio/file/Path;
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getLoadedHostsEntries()Ljava/util/Collection;

    move-result-object v2

    .line 579
    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    move-object v8, v2

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->updateKnownHostsFile(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    goto :goto_0

    .line 580
    :catchall_0
    move-exception v9

    .line 581
    .local v9, "t":Ljava/lang/Throwable;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v9}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->handleKnownHostsFileUpdateFailure(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 584
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 587
    .end local v0    # "file":Ljava/nio/file/Path;
    .end local v2    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :cond_1
    return v2
.end method

.method protected findKnownHostEntry(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/util/Collection;)Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .locals 18
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;)",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;"
        }
    .end annotation

    .line 497
    .local p3, "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p3 .. p3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 498
    return-object v3

    .line 501
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->resolveHostNetworkIdentities(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;)Ljava/util/Collection;

    move-result-object v4

    .line 502
    .local v4, "candidates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/util/net/SshdSocketAddress;>;"
    iget-object v0, v1, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    .line 503
    .local v5, "debugEnabled":Z
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_1

    .line 504
    iget-object v0, v1, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v2, v10, v8

    aput-object p2, v10, v7

    aput-object v4, v10, v6

    const-string v11, "findKnownHostEntry({})[{}] host network identities: {}"

    invoke-interface {v0, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :cond_1
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    return-object v3

    .line 512
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;

    .line 513
    .local v11, "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    invoke-virtual {v11}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->getHostEntry()Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v12

    .line 514
    .local v12, "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 516
    .local v14, "host":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    const/4 v15, 0x4

    :try_start_0
    invoke-virtual {v14}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v12, v0, v3}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->isHostMatch(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    if-eqz v5, :cond_3

    .line 518
    iget-object v0, v1, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string v3, "findKnownHostEntry({})[{}] matched host={} for entry={}"

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v2, v9, v8

    aput-object p2, v9, v7

    aput-object v14, v9, v6

    const/16 v16, 0x3

    aput-object v12, v9, v16

    invoke-interface {v0, v3, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_3
    return-object v11

    .line 530
    :cond_4
    const/16 v16, 0x3

    goto :goto_3

    .line 523
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v3, v1, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v8

    aput-object p2, v9, v7

    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v6

    const/16 v16, 0x3

    aput-object v14, v9, v16

    .line 526
    invoke-virtual {v12}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getConfigLine()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v15

    const/4 v15, 0x5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v15

    .line 524
    const-string v15, "findKnownHostEntry({})[{}] failed ({}) to check host={} for entry={}: {}"

    invoke-interface {v3, v15, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    if-eqz v5, :cond_5

    .line 528
    iget-object v3, v1, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "findKnownHostEntry("

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ") host="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ", entry="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " match failure details"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v14    # "host":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :cond_5
    :goto_3
    move/from16 v9, v16

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 514
    :cond_6
    move/from16 v16, v9

    .line 532
    .end local v11    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .end local v12    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 534
    :cond_7
    const/4 v3, 0x0

    return-object v3
.end method

.method public getDelegateVerifier()Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->delegate:Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    return-object v0
.end method

.method protected getFallbackPublicKeyEntryResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .locals 1

    .line 260
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;->IGNORING:Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;

    return-object v0
.end method

.method protected getHostValueDigester(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/NamedFactory;
    .locals 1
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "hostIdentity"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ")",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;"
        }
    .end annotation

    .line 740
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoadedHostsEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getModifiedServerKeyAcceptor()Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->modKeyAcceptor:Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;

    return-object v0
.end method

.method protected handleKnownHostsFileUpdateFailure(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;
    .param p4, "file"    # Ljava/nio/file/Path;
    .param p6, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            "Ljava/security/PublicKey;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 605
    .local p5, "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 606
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 607
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object p4, v1, v2

    .line 608
    invoke-virtual {p6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 605
    const-string v2, "handleKnownHostsFileUpdateFailure({})[{}] failed ({}) to update key={}-{} in {}: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKnownHostsFileUpdateFailure("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] file update failure details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    :cond_0
    return-void
.end method

.method protected handleModifiedServerKeyUpdateFailure(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "match"    # Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .param p4, "serverKey"    # Ljava/security/PublicKey;
    .param p5, "file"    # Ljava/nio/file/Path;
    .param p7, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            "Ljava/security/PublicKey;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 457
    .local p6, "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 458
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {p7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 457
    const-string v2, "acceptKnownHostEntries({})[{}] failed ({}) to update modified server key of {}: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptKnownHostEntries("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] modified key update failure details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    :cond_0
    return-void
.end method

.method protected prepareKnownHostEntry(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .locals 11
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 686
    nop

    .line 687
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->resolveHostNetworkIdentities(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;)Ljava/util/Collection;

    move-result-object v0

    .line 688
    .local v0, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/util/net/SshdSocketAddress;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    const/4 v1, 0x0

    return-object v1

    .line 692
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x7f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 693
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 694
    .local v2, "rnd":Lorg/apache/sshd/common/random/Random;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 695
    .local v4, "hostIdentity":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 696
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    :cond_1
    nop

    .line 700
    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getHostValueDigester(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/NamedFactory;

    move-result-object v5

    .line 701
    .local v5, "digester":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;"
    if-eqz v5, :cond_3

    .line 702
    if-nez v2, :cond_2

    .line 703
    nop

    .line 704
    invoke-interface {p1}, Lorg/apache/sshd/client/session/ClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v6

    const-string v7, "No factory manager"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/FactoryManager;

    .line 705
    .local v6, "manager":Lorg/apache/sshd/common/FactoryManager;
    nop

    .line 706
    invoke-interface {v6}, Lorg/apache/sshd/common/FactoryManager;->getRandomFactory()Lorg/apache/sshd/common/Factory;

    move-result-object v7

    const-string v8, "No random factory"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/common/Factory;

    .line 707
    .local v7, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/random/Random;>;"
    invoke-interface {v7}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "No randomizer created"

    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Lorg/apache/sshd/common/random/Random;

    .line 710
    .end local v6    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v7    # "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/random/Random;>;"
    :cond_2
    invoke-interface {v5}, Lorg/apache/sshd/common/NamedFactory;->create()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/mac/Mac;

    .line 711
    .local v6, "mac":Lorg/apache/sshd/common/mac/Mac;
    invoke-interface {v6}, Lorg/apache/sshd/common/mac/Mac;->getDefaultBlockSize()I

    move-result v7

    .line 712
    .local v7, "blockSize":I
    new-array v8, v7, [B

    .line 713
    .local v8, "salt":[B
    invoke-interface {v2, v8}, Lorg/apache/sshd/common/random/Random;->fill([B)V

    .line 715
    nop

    .line 717
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v10

    .line 716
    invoke-static {v9, v10, v6, v8}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->calculateHashValue(Ljava/lang/String;ILorg/apache/sshd/common/mac/Mac;[B)[B

    move-result-object v9

    .line 718
    .local v9, "digestValue":[B
    invoke-static {v1, v5, v8, v9}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->append(Ljava/lang/Appendable;Lorg/apache/sshd/common/NamedResource;[B[B)Ljava/lang/Appendable;

    .line 719
    .end local v6    # "mac":Lorg/apache/sshd/common/mac/Mac;
    .end local v7    # "blockSize":I
    .end local v8    # "salt":[B
    .end local v9    # "digestValue":[B
    goto :goto_1

    .line 720
    :cond_3
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v7

    invoke-static {v1, v6, v7}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->appendHostPattern(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    .line 722
    .end local v4    # "hostIdentity":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local v5    # "digester":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;"
    :goto_1
    goto :goto_0

    .line 724
    :cond_4
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->appendPublicKeyEntry(Ljava/lang/Appendable;Ljava/security/PublicKey;)Ljava/lang/Appendable;

    .line 725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->parseKnownHostEntry(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v3

    return-object v3
.end method

.method protected prepareModifiedServerKeyLine(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 5
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "entry"    # Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .param p4, "curLine"    # Ljava/lang/String;
    .param p5, "expected"    # Ljava/security/PublicKey;
    .param p6, "actual"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    if-eqz p3, :cond_6

    invoke-static {p4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 421
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 422
    .local v1, "pos":I
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 424
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 425
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_1

    .line 430
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_0
    move v1, v3

    .line 433
    :cond_4
    const/4 v3, 0x1

    if-lez v1, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    const-string v4, "Missing encoded key in line=%s"

    invoke-static {v3, v4, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p6}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->appendPublicKeyEntry(Ljava/lang/Appendable;Ljava/security/PublicKey;)Ljava/lang/Appendable;

    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 418
    .end local v1    # "pos":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    return-object p4
.end method

.method protected reloadKnownHosts(Lorg/apache/sshd/client/session/ClientSession;Ljava/nio/file/Path;)Ljava/util/List;
    .locals 12
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->readKnownHostEntries(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/config/hosts/KnownHostEntry;>;"
    iget-object v2, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 200
    .local v2, "debugEnabled":Z
    if-eqz v2, :cond_0

    .line 201
    iget-object v3, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "reloadKnownHosts({}) loaded {} entries"

    invoke-interface {v3, v5, p2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->updateReloadAttributes()V

    .line 205
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 209
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getFallbackPublicKeyEntryResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;

    move-result-object v4

    .line 211
    .local v4, "resolver":Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    .line 213
    .local v6, "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    :try_start_0
    invoke-virtual {p0, p1, v6, v4}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->resolveHostKey(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;

    move-result-object v7

    .line 214
    .local v7, "key":Ljava/security/PublicKey;
    if-eqz v7, :cond_2

    .line 215
    new-instance v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;

    invoke-direct {v8, v6, v7}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;-><init>(Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/security/PublicKey;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v7    # "key":Ljava/security/PublicKey;
    :cond_2
    goto :goto_1

    .line 217
    :catchall_0
    move-exception v7

    .line 218
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v8, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v0

    const/4 v10, 0x1

    .line 219
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 218
    const-string v10, "reloadKnownHosts({}) failed ({}) to load key of {}: {}"

    invoke-interface {v8, v10, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    if-eqz v2, :cond_3

    .line 221
    iget-object v8, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reloadKnownHosts("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " load failure details"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .end local v6    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    goto :goto_0

    .line 226
    :cond_4
    return-object v3
.end method

.method protected resolveHostKey(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "entry"    # Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .param p3, "resolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 245
    if-nez p2, :cond_0

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_0
    nop

    .line 250
    invoke-virtual {p2}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getKeyEntry()Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    move-result-object v0

    const-string v1, "No key extracted from %s"

    invoke-static {v0, v1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    .line 251
    .local v0, "authEntry":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    invoke-virtual {v0, p1, p3}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->resolvePublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;

    move-result-object v1

    .line 252
    .local v1, "key":Ljava/security/PublicKey;
    iget-object v2, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "resolveHostKey({}) loaded {}-{}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_1
    return-object v1
.end method

.method protected resolveHostNetworkIdentities(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;)Ljava/util/Collection;
    .locals 3
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;"
        }
    .end annotation

    .line 760
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->BY_HOST_AND_PORT:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 761
    .local v0, "candidates":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/util/net/SshdSocketAddress;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toSshdSocketAddress(Ljava/net/SocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-interface {p1}, Lorg/apache/sshd/client/session/ClientSession;->getConnectAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 763
    .local v1, "connectAddress":Ljava/net/SocketAddress;
    invoke-static {v1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toSshdSocketAddress(Ljava/net/SocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 764
    return-object v0
.end method

.method protected setLoadedHostsEntries(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public setModifiedServerKeyAcceptor(Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;)V
    .locals 0
    .param p1, "acceptor"    # Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;

    .line 153
    iput-object p1, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->modKeyAcceptor:Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;

    .line 154
    return-void
.end method

.method protected updateKnownHostsFile(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .locals 10
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;
    .param p4, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            "Ljava/security/PublicKey;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;)",
            "Lorg/apache/sshd/client/config/hosts/KnownHostEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 636
    .local p5, "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->prepareKnownHostEntry(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v0

    .line 637
    .local v0, "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 638
    iget-object v3, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    iget-object v3, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string/jumbo v4, "updateKnownHostsFile({})[{}] no entry generated for key={}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    const/4 v1, 0x2

    .line 640
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 639
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 646
    :cond_1
    invoke-virtual {v0}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getConfigLine()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "line":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 648
    .local v4, "lineData":[B
    new-array v5, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p4}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    .line 649
    .local v5, "reuseExisting":Z
    :goto_0
    invoke-static {}, Lorg/apache/sshd/common/util/io/IoUtils;->getEOLBytes()[B

    move-result-object v6

    .line 650
    .local v6, "eolBytes":[B
    iget-object v7, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->updateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 651
    if-eqz v5, :cond_3

    :try_start_0
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v8, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v1, v2

    .line 652
    invoke-static {p4, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-array v1, v2, [Ljava/nio/file/OpenOption;

    .line 653
    invoke-static {p4, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_1
    nop

    .line 651
    .local v1, "output":Ljava/io/OutputStream;
    nop

    .line 654
    if-eqz v5, :cond_4

    .line 655
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 658
    :cond_4
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 659
    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 661
    .end local v1    # "output":Ljava/io/OutputStream;
    :cond_5
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 663
    iget-object v1, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 664
    iget-object v1, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "updateKnownHostsFile({}) updated: {}"

    invoke-interface {v1, v2, p4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 666
    :cond_6
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->resetReloadAttributes()V

    .line 667
    return-object v0

    .line 651
    .restart local v1    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v1    # "output":Ljava/io/OutputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lineData":[B
    .end local v5    # "reuseExisting":Z
    .end local v6    # "eolBytes":[B
    .end local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p3    # "serverKey":Ljava/security/PublicKey;
    .end local p4    # "file":Ljava/nio/file/Path;
    .end local p5    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 660
    .restart local v0    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .restart local v1    # "output":Ljava/io/OutputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lineData":[B
    .restart local v5    # "reuseExisting":Z
    .restart local v6    # "eolBytes":[B
    .restart local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p3    # "serverKey":Ljava/security/PublicKey;
    .restart local p4    # "file":Ljava/nio/file/Path;
    .restart local p5    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :catchall_1
    move-exception v8

    if-eqz v1, :cond_7

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v9

    :try_start_5
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lineData":[B
    .end local v5    # "reuseExisting":Z
    .end local v6    # "eolBytes":[B
    .end local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p3    # "serverKey":Ljava/security/PublicKey;
    .end local p4    # "file":Ljava/nio/file/Path;
    .end local p5    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :cond_7
    :goto_2
    throw v8

    .line 661
    .end local v1    # "output":Ljava/io/OutputStream;
    .restart local v0    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lineData":[B
    .restart local v5    # "reuseExisting":Z
    .restart local v6    # "eolBytes":[B
    .restart local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p3    # "serverKey":Ljava/security/PublicKey;
    .restart local p4    # "file":Ljava/nio/file/Path;
    .restart local p5    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :catchall_3
    move-exception v1

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method

.method protected updateModifiedServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;Ljava/security/PublicKey;Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 16
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "match"    # Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .param p4, "actual"    # Ljava/security/PublicKey;
    .param p5, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            "Ljava/security/PublicKey;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    .local p6, "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->getHostEntry()Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v10

    .line 324
    .local v10, "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    invoke-virtual {v10}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getConfigLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No entry config line"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, "matchLine":Ljava/lang/String;
    nop

    .line 326
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->getServerKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 325
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->prepareModifiedServerKeyLine(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "newLine":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string/jumbo v6, "updateModifiedServerKey({})[{}] no replacement generated for {}"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    aput-object v11, v3, v2

    invoke-interface {v0, v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :cond_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string/jumbo v6, "updateModifiedServerKey({})[{}] unmodified updated line for {}"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    aput-object v11, v3, v2

    invoke-interface {v0, v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_2
    return-void

    .line 343
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 344
    .local v6, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->updateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 345
    const/4 v12, -0x1

    .line 346
    .local v12, "matchingIndex":I
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v9, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v13, v0

    .line 347
    .local v13, "rdr":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_9

    .line 349
    if-ltz v12, :cond_4

    .line 350
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    goto :goto_1

    .line 353
    :cond_4
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    .line 354
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 355
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    goto :goto_1

    .line 359
    :cond_5
    const/16 v14, 0x23

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 360
    .local v14, "pos":I
    if-nez v14, :cond_6

    .line 361
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    goto :goto_1

    .line 365
    :cond_6
    if-lez v14, :cond_7

    .line 366
    invoke-virtual {v0, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    .line 370
    :cond_7
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 371
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    goto :goto_1

    .line 375
    :cond_8
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    move v12, v15

    .line 347
    .end local v14    # "pos":I
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v0, v14

    goto :goto_0

    .line 378
    .end local v0    # "line":Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_a

    :try_start_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 380
    .end local v13    # "rdr":Ljava/io/BufferedReader;
    :cond_a
    if-ltz v12, :cond_b

    move v0, v4

    goto :goto_2

    :cond_b
    move v0, v5

    :goto_2
    const-string v13, "No match found for line=%s"

    invoke-static {v0, v13, v11}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 382
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v13, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v9, v0, v13}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v13, v0

    .line 383
    .local v13, "w":Ljava/io/Writer;
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 384
    .local v14, "l":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v15

    sget-object v2, Lorg/apache/sshd/common/util/io/IoUtils;->EOL:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    const/4 v2, 0x2

    .end local v14    # "l":Ljava/lang/String;
    goto :goto_3

    .line 386
    :cond_c
    if-eqz v13, :cond_d

    :try_start_4
    invoke-virtual {v13}, Ljava/io/Writer;->close()V

    .line 388
    .end local v13    # "w":Ljava/io/Writer;
    :cond_d
    monitor-enter p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 389
    :try_start_5
    invoke-virtual/range {p3 .. p4}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->setServerKey(Ljava/security/PublicKey;)V

    .line 390
    invoke-virtual {v10, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setConfigLine(Ljava/lang/String;)V

    .line 391
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    .end local v12    # "matchingIndex":I
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 394
    iget-object v0, v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 395
    iget-object v0, v8, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "updateModifiedServerKey({}) replaced \'{}\' with \'{}\'"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v5

    aput-object v11, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->resetReloadAttributes()V

    .line 398
    return-void

    .line 391
    .restart local v12    # "matchingIndex":I
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v1    # "newLine":Ljava/lang/String;
    .end local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v11    # "matchLine":Ljava/lang/String;
    .end local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .end local p4    # "actual":Ljava/security/PublicKey;
    .end local p5    # "file":Ljava/nio/file/Path;
    .end local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 382
    .restart local v1    # "newLine":Ljava/lang/String;
    .restart local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .restart local v11    # "matchLine":Ljava/lang/String;
    .restart local v13    # "w":Ljava/io/Writer;
    .restart local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .restart local p4    # "actual":Ljava/security/PublicKey;
    .restart local p5    # "file":Ljava/nio/file/Path;
    .restart local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :catchall_1
    move-exception v0

    move-object v2, v0

    .end local v1    # "newLine":Ljava/lang/String;
    .end local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v11    # "matchLine":Ljava/lang/String;
    .end local v12    # "matchingIndex":I
    .end local v13    # "w":Ljava/io/Writer;
    .end local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .end local p4    # "actual":Ljava/security/PublicKey;
    .end local p5    # "file":Ljava/nio/file/Path;
    .end local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 386
    .restart local v1    # "newLine":Ljava/lang/String;
    .restart local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .restart local v11    # "matchLine":Ljava/lang/String;
    .restart local v12    # "matchingIndex":I
    .restart local v13    # "w":Ljava/io/Writer;
    .restart local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .restart local p4    # "actual":Ljava/security/PublicKey;
    .restart local p5    # "file":Ljava/nio/file/Path;
    .restart local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v13, :cond_f

    :try_start_a
    invoke-virtual {v13}, Ljava/io/Writer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_b
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "newLine":Ljava/lang/String;
    .end local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v11    # "matchLine":Ljava/lang/String;
    .end local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .end local p4    # "actual":Ljava/security/PublicKey;
    .end local p5    # "file":Ljava/nio/file/Path;
    .end local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :cond_f
    :goto_4
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 346
    .restart local v1    # "newLine":Ljava/lang/String;
    .restart local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .restart local v11    # "matchLine":Ljava/lang/String;
    .local v13, "rdr":Ljava/io/BufferedReader;
    .restart local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .restart local p4    # "actual":Ljava/security/PublicKey;
    .restart local p5    # "file":Ljava/nio/file/Path;
    .restart local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :catchall_4
    move-exception v0

    move-object v2, v0

    .end local v1    # "newLine":Ljava/lang/String;
    .end local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v11    # "matchLine":Ljava/lang/String;
    .end local v12    # "matchingIndex":I
    .end local v13    # "rdr":Ljava/io/BufferedReader;
    .end local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .end local p4    # "actual":Ljava/security/PublicKey;
    .end local p5    # "file":Ljava/nio/file/Path;
    .end local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 378
    .restart local v1    # "newLine":Ljava/lang/String;
    .restart local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .restart local v11    # "matchLine":Ljava/lang/String;
    .restart local v12    # "matchingIndex":I
    .restart local v13    # "rdr":Ljava/io/BufferedReader;
    .restart local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .restart local p4    # "actual":Ljava/security/PublicKey;
    .restart local p5    # "file":Ljava/nio/file/Path;
    .restart local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :catchall_5
    move-exception v0

    move-object v3, v0

    if-eqz v13, :cond_10

    :try_start_d
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v4, v0

    :try_start_e
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "newLine":Ljava/lang/String;
    .end local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .end local v11    # "matchLine":Ljava/lang/String;
    .end local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .end local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .end local p4    # "actual":Ljava/security/PublicKey;
    .end local p5    # "file":Ljava/nio/file/Path;
    .end local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :cond_10
    :goto_5
    throw v3

    .line 392
    .end local v12    # "matchingIndex":I
    .end local v13    # "rdr":Ljava/io/BufferedReader;
    .restart local v1    # "newLine":Ljava/lang/String;
    .restart local v6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .restart local v11    # "matchLine":Ljava/lang/String;
    .restart local p1    # "clientSession":Lorg/apache/sshd/client/session/ClientSession;
    .restart local p2    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p3    # "match":Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
    .restart local p4    # "actual":Ljava/security/PublicKey;
    .restart local p5    # "file":Ljava/nio/file/Path;
    .restart local p6    # "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :catchall_7
    move-exception v0

    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0
.end method

.method public verifyServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;)Z
    .locals 6
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "serverKey"    # Ljava/security/PublicKey;

    .line 158
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getLoadedHostsEntries()Ljava/util/Collection;

    move-result-object v0

    .line 160
    .local v0, "knownHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->checkReloadRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 162
    .local v1, "file":Ljava/nio/file/Path;
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0, p1, v1}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->reloadKnownHosts(Lorg/apache/sshd/client/session/ClientSession;Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 165
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "verifyServerKey({})[{}] missing known hosts file {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 172
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->setLoadedHostsEntries(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "file":Ljava/nio/file/Path;
    :cond_2
    nop

    .line 178
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->acceptKnownHostEntries(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 174
    :catchall_0
    move-exception v1

    .line 175
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->acceptIncompleteHostKeys(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Ljava/security/PublicKey;Ljava/lang/Throwable;)Z

    move-result v2

    return v2
.end method
