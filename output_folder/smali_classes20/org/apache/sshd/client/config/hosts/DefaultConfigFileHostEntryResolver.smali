.class public Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;
.super Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;
.source "DefaultConfigFileHostEntryResolver.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;


# instance fields
.field private final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;-><init>(Z)V

    sput-object v0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->INSTANCE:Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;

    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V
    .locals 0
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "strict"    # Z
    .param p3, "options"    # [Ljava/nio/file/LinkOption;

    .line 55
    invoke-direct {p0, p1, p3}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 56
    iput-boolean p2, p0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->strict:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "strict"    # Z

    .line 51
    invoke-static {}, Lorg/apache/sshd/client/config/hosts/HostConfigEntry;->getDefaultHostConfigFile()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;-><init>(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final isStrict()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->strict:Z

    return v0
.end method

.method protected reloadHostConfigEntries(Ljava/nio/file/Path;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 8
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

    .line 71
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p4, v6, v5

    aput-object p2, v6, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p1, v6, v1

    const-string v7, "reloadHostConfigEntries({}@{}:{}) check permissions of {}"

    invoke-interface {v0, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_0
    new-array v0, v5, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->validateStrictConfigFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 77
    .local v0, "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    if-eqz v0, :cond_1

    .line 78
    iget-object v6, p0, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p4, v7, v5

    aput-object p2, v7, v3

    .line 79
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    aput-object p1, v7, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v4

    .line 78
    const-string v1, "reloadHostConfigEntries({}@{}:{}) invalid file={} permissions: {}"

    invoke-interface {v6, v1, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/DefaultConfigFileHostEntryResolver;->updateReloadAttributes()V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 85
    .end local v0    # "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/client/config/hosts/ConfigFileHostEntryResolver;->reloadHostConfigEntries(Ljava/nio/file/Path;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
