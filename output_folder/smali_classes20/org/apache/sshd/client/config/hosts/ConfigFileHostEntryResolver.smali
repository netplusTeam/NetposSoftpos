.class public Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;
.super Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;
.source "ConfigFileHostEntryResolver.java"

# interfaces
.implements Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;


# instance fields
.field private final delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;

    .line 46
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 47
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;->EMPTY:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    return-void
.end method


# virtual methods
.method protected reloadHostConfigEntries(Ljava/nio/file/Path;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/HostConfigEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->readHostConfigEntries(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    iget-object v2, p0, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v0, 0x4

    aput-object p1, v3, v0

    const-string v0, "resolveEffectiveResolver({}@{}:{}) loaded {} entries from {}"

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->updateReloadAttributes()V

    .line 108
    return-object v1
.end method

.method public resolveEffectiveHost(Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .locals 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    .line 58
    nop

    .line 59
    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v1, v8, v9, v10}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->resolveEffectiveResolver(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    move-result-object v0

    const-string v2, "No delegate"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    .line 60
    .local v2, "delegate":Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;->resolveEffectiveHost(Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;

    move-result-object v0

    .line 61
    .local v0, "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    iget-object v3, v1, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, v1, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    const-string v4, "resolveEffectiveHost({}@{}:{}) => {}"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v10, v5, v15

    aput-object v8, v5, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    aput-object v0, v5, v12

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    return-object v0

    .line 66
    .end local v0    # "entry":Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .end local v2    # "delegate":Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    :catchall_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, v1, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, v1, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v15

    aput-object v8, v3, v14

    .line 69
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    .line 68
    const-string v4, "resolveEffectiveHost({}@{}:{}) failed ({}) to resolve: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_1
    iget-object v2, v1, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, v1, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveEffectiveHost("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") resolution failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_2
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_3

    .line 76
    move-object v2, v0

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 78
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected resolveEffectiveResolver(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->checkReloadRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;->EMPTY:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 88
    .local v0, "path":Ljava/nio/file/Path;
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    nop

    .line 90
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->reloadHostConfigEntries(Ljava/nio/file/Path;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-lez v2, :cond_0

    .line 92
    iget-object v2, p0, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->toHostConfigEntryResolver(Ljava/util/Collection;)Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 94
    .end local v1    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/config/hosts/HostConfigEntry;>;"
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v3, "resolveEffectiveResolver({}@{}:{}) no configuration file at {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .end local v0    # "path":Ljava/nio/file/Path;
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->delegateHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    return-object v0
.end method
