.class public Lorg/jpos/q2/ssh/SshService;
.super Lorg/jpos/q2/QBeanSupport;
.source "SshService.java"

# interfaces
.implements Lorg/jpos/q2/ssh/SshCLIContextMBean;


# instance fields
.field sshd:Lorg/apache/sshd/server/SshServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    return-void
.end method

.method private checkAuthorizedKeys(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "OS":Ljava/lang/String;
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/jpos/q2/ssh/SshService;->log:Lorg/jpos/util/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Windows Detected, ignoring file permissions check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 99
    return-void

    .line 101
    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 102
    .local v2, "file":Ljava/nio/file/Path;
    const-class v3, Ljava/nio/file/attribute/PosixFileAttributeView;

    new-array v4, v1, [Ljava/nio/file/LinkOption;

    .line 103
    invoke-static {v2, v3, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v3

    check-cast v3, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 104
    invoke-interface {v3}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v3

    .line 105
    .local v3, "attrs":Ljava/nio/file/attribute/PosixFileAttributes;
    invoke-interface {v3}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v4

    .line 106
    .local v4, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 107
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Ljava/nio/file/Files;->isWritable(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    :cond_1
    return-void

    .line 108
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 109
    invoke-static {v4}, Ljava/nio/file/attribute/PosixFilePermissions;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x1

    aput-object p1, v6, v1

    const-string v1, "Invalid permissions \'%s\' for file \'%s\'"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static createDescriptor(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 3
    .param p0, "port"    # I
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "authorizedKeysFile"    # Ljava/lang/String;
    .param p3, "hostKeyFile"    # Ljava/lang/String;

    .line 114
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "sshd"

    invoke-direct {v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 115
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "port"

    invoke-static {v2, v1}, Lorg/jpos/q2/ssh/SshService;->createProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    move-result-object v0

    .line 117
    const-string v1, "auth-username"

    invoke-static {v1, p1}, Lorg/jpos/q2/ssh/SshService;->createProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    move-result-object v0

    .line 118
    const-string v1, "authorized-keys-file"

    invoke-static {v1, p2}, Lorg/jpos/q2/ssh/SshService;->createProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    move-result-object v0

    .line 119
    const-string v1, "hostkeys-file"

    invoke-static {v1, p3}, Lorg/jpos/q2/ssh/SshService;->createProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method private static createProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 123
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "property"

    invoke-direct {v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 125
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method private getPrefixes()[Ljava/lang/String;
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/jpos/q2/ssh/SshService;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "prefixes"

    invoke-interface {v0, v1}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "prefixes":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    .line 91
    :cond_0
    const-string v1, "org.jpos.q2.cli."

    const-string v2, "org.jpos.ee.cli.cmds."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected startService()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/jpos/q2/ssh/SshService;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "auth-username"

    const-string v2, "admin"

    invoke-interface {v0, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/q2/ssh/SshService;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "authorized-keys-file"

    const-string v3, "cfg/authorized_keys"

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "authorizedKeysFilename":Ljava/lang/String;
    iget-object v2, p0, Lorg/jpos/q2/ssh/SshService;->cfg:Lorg/jpos/core/Configuration;

    const-string v3, "hostkeys-file"

    const-string v4, "cfg/hostkeys.ser"

    invoke-interface {v2, v3, v4}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "hostKeys":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/q2/ssh/SshService;->cfg:Lorg/jpos/core/Configuration;

    const-string v4, "port"

    const/16 v5, 0x8ae

    invoke-interface {v3, v4, v5}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, "port":I
    invoke-direct {p0, v1}, Lorg/jpos/q2/ssh/SshService;->checkAuthorizedKeys(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lorg/jpos/q2/ssh/SshService;->getPrefixes()[Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "prefixes":[Ljava/lang/String;
    invoke-static {}, Lorg/apache/sshd/server/SshServer;->setUpDefaultServer()Lorg/apache/sshd/server/SshServer;

    move-result-object v5

    iput-object v5, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    .line 56
    invoke-virtual {v5, v3}, Lorg/apache/sshd/server/SshServer;->setPort(I)V

    .line 57
    iget-object v5, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    new-instance v6, Lorg/apache/sshd/server/keyprovider/SimpleGeneratorHostKeyProvider;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sshd/server/keyprovider/SimpleGeneratorHostKeyProvider;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v5, v6}, Lorg/apache/sshd/server/SshServer;->setKeyPairProvider(Lorg/apache/sshd/common/keyprovider/KeyPairProvider;)V

    .line 59
    new-instance v5, Lorg/jpos/q2/ssh/CliShellFactory;

    invoke-virtual {p0}, Lorg/jpos/q2/ssh/SshService;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/jpos/q2/ssh/CliShellFactory;-><init>(Lorg/jpos/q2/Q2;[Ljava/lang/String;)V

    .line 60
    .local v5, "csf":Lorg/jpos/q2/ssh/CliShellFactory;
    iget-object v6, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    invoke-virtual {v6, v5}, Lorg/apache/sshd/server/SshServer;->setShellFactory(Lorg/apache/sshd/server/shell/ShellFactory;)V

    .line 61
    iget-object v6, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    invoke-virtual {v6, v5}, Lorg/apache/sshd/server/SshServer;->setCommandFactory(Lorg/apache/sshd/server/command/CommandFactory;)V

    .line 64
    iget-object v6, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    new-instance v7, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;

    invoke-direct {v7}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/sshd/server/SshServer;->setUserAuthFactories(Ljava/util/List;)V

    .line 65
    iget-object v6, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    new-instance v7, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;

    invoke-direct {v7, v0, v1}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/apache/sshd/server/SshServer;->setPublickeyAuthenticator(Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;)V

    .line 66
    iget-object v6, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    invoke-virtual {v6}, Lorg/apache/sshd/server/SshServer;->start()V

    .line 67
    iget-object v6, p0, Lorg/jpos/q2/ssh/SshService;->log:Lorg/jpos/util/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Started SSHD @ port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected stopService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/jpos/q2/ssh/SshService;->log:Lorg/jpos/util/Log;

    const-string v1, "Stopping SSHD"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/jpos/q2/ssh/SshService$1;

    invoke-direct {v0, p0}, Lorg/jpos/q2/ssh/SshService$1;-><init>(Lorg/jpos/q2/ssh/SshService;)V

    .line 82
    invoke-virtual {v0}, Lorg/jpos/q2/ssh/SshService$1;->start()V

    .line 84
    :cond_0
    return-void
.end method
