.class public Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;
.super Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;
.source "AuthorizedKeysAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator$LazyDefaultAuthorizedKeysFileHolder;
    }
.end annotation


# static fields
.field public static final STD_AUTHORIZED_KEYS_FILENAME:Ljava/lang/String; = "authorized_keys"


# instance fields
.field private final delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;

    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 74
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/server/auth/pubkey/RejectAllPublickeyAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/pubkey/RejectAllPublickeyAuthenticator;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    return-void
.end method

.method public static getDefaultAuthorizedKeysFile()Ljava/nio/file/Path;
    .locals 1

    .line 168
    invoke-static {}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator$LazyDefaultAuthorizedKeysFileHolder;->access$000()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs readDefaultAuthorizedKeys([Ljava/nio/file/OpenOption;)Ljava/util/List;
    .locals 2
    .param p0, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->getDefaultAuthorizedKeysFile()Ljava/nio/file/Path;

    move-result-object v0

    .line 181
    .local v0, "keysFile":Ljava/nio/file/Path;
    sget-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->readAuthorizedKeys(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 184
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 17
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 82
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v0, v1, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    .line 83
    .local v4, "debugEnabled":Z
    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->isValidUsername(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-nez v0, :cond_1

    .line 84
    if-eqz v4, :cond_0

    .line 85
    iget-object v0, v1, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    aput-object v3, v8, v7

    .line 86
    invoke-interface/range {p2 .. p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    aput-object v6, v8, v5

    .line 85
    const-string v5, "authenticate({})[{}][{}] invalid user name - file = {}"

    invoke-interface {v0, v5, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    return v9

    .line 92
    :cond_1
    nop

    .line 93
    const/4 v10, 0x5

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->resolvePublickeyAuthenticator(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    move-result-object v0

    const-string v11, "No delegate"

    invoke-static {v0, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    .local v0, "delegate":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    move-object/from16 v11, p2

    :try_start_1
    invoke-interface {v0, v2, v11, v3}, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;->authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v12

    .line 95
    .local v12, "accepted":Z
    if-eqz v4, :cond_2

    .line 96
    iget-object v13, v1, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v14, "authenticate({})[{}][{}] invalid user name - accepted={} from file = {}"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v2, v15, v9

    aput-object v3, v15, v7

    .line 97
    invoke-interface/range {p2 .. p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->getPath()Ljava/nio/file/Path;

    move-result-object v16

    aput-object v16, v15, v8

    .line 96
    invoke-interface {v13, v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_2
    return v12

    .line 101
    .end local v0    # "delegate":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .end local v12    # "accepted":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p2

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v4, :cond_3

    .line 103
    iget-object v12, v1, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v2, v13, v9

    aput-object v3, v13, v7

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v6

    invoke-interface/range {p2 .. p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    aput-object v5, v13, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v10

    .line 103
    const-string v5, "authenticate({})[{}] failed ({}) to authenticate {} key from {}: {}"

    invoke-interface {v12, v5, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_3
    iget-object v5, v1, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    iget-object v5, v1, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "authenticate("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] failure details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :cond_4
    return v9
.end method

.method protected createDelegateAuthenticator(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;Ljava/nio/file/Path;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p3, "path"    # Ljava/nio/file/Path;
    .param p5, "fallbackResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;",
            ")",
            "Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    .local p4, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;>;"
    invoke-static {p3, p2, p4, p5}, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;->fromAuthorizedEntries(Ljava/lang/Object;Lorg/apache/sshd/server/session/ServerSession;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method protected getFallbackPublicKeyEntryResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .locals 1

    .line 150
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;->IGNORING:Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;

    return-object v0
.end method

.method protected isValidUsername(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 115
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected reloadAuthorizedKeys(Ljava/nio/file/Path;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Ljava/util/Collection;
    .locals 5
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->readAuthorizedKeys(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;>;"
    iget-object v2, p0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const/4 v0, 0x1

    aput-object p3, v3, v0

    .line 158
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 157
    const-string v0, "reloadAuthorizedKeys({})[{}] loaded {} keys from {}"

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->updateReloadAttributes()V

    .line 160
    return-object v1
.end method

.method protected resolvePublickeyAuthenticator(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->checkReloadRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/server/auth/pubkey/RejectAllPublickeyAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/pubkey/RejectAllPublickeyAuthenticator;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 127
    .local v0, "path":Ljava/nio/file/Path;
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->reloadAuthorizedKeys(Ljava/nio/file/Path;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Ljava/util/Collection;

    move-result-object v1

    .line 129
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-lez v2, :cond_0

    .line 130
    nop

    .line 131
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->getFallbackPublicKeyEntryResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->createDelegateAuthenticator(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;Ljava/nio/file/Path;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    move-result-object v2

    .line 132
    .local v2, "authDelegate":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    iget-object v3, p0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 134
    .end local v1    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;>;"
    .end local v2    # "authDelegate":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v3, "resolvePublickeyAuthenticator({})[{}] no authorized keys file at {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .end local v0    # "path":Ljava/nio/file/Path;
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    return-object v0
.end method
