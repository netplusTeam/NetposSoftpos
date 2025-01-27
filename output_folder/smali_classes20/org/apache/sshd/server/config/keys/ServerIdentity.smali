.class public final Lorg/apache/sshd/server/config/keys/ServerIdentity;
.super Ljava/lang/Object;
.source "ServerIdentity.java"


# static fields
.field public static final HOST_KEY_CONFIG_PROP:Ljava/lang/String; = "HostKey"

.field public static final ID_FILE_PREFIX:Ljava/lang/String; = "ssh_host_"

.field public static final ID_FILE_SUFFIX:Ljava/lang/String; = "_key"

.field public static final ID_GENERATOR:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lorg/apache/sshd/server/config/keys/ServerIdentity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/server/config/keys/ServerIdentity$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/config/keys/ServerIdentity;->ID_GENERATOR:Ljava/util/function/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs findIdentities(Ljava/util/Properties;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 13
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    const-string v0, "HostKey"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "keyList":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "paths":[Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 150
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 151
    .local v2, "ids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/file/Path;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    .line 152
    .local v6, "p":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    .line 154
    .local v8, "path":Ljava/nio/file/Path;
    invoke-static {v8, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 155
    goto :goto_2

    .line 158
    :cond_2
    invoke-interface {v8}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/sshd/server/config/keys/ServerIdentity;->getIdentityType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "type":Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 160
    move-object v9, v6

    .line 162
    :cond_3
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/nio/file/Path;

    .line 163
    .local v10, "prev":Ljava/nio/file/Path;
    if-nez v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    move v11, v4

    :goto_1
    const-string v12, "Multiple mappings for type=%s"

    invoke-static {v11, v12, v9}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 151
    .end local v6    # "p":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "path":Ljava/nio/file/Path;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "prev":Ljava/nio/file/Path;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    :cond_5
    return-object v2
.end method

.method public static getIdentityFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .line 199
    const-string v0, "ssh_host_"

    const-string v1, "_key"

    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->getIdentityFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentityFileName(Lorg/apache/sshd/common/NamedResource;)Ljava/lang/String;
    .locals 1
    .param p0, "r"    # Lorg/apache/sshd/common/NamedResource;

    .line 186
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/server/config/keys/ServerIdentity;->getIdentityFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentityType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 175
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ssh_host_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_key"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    if-le v0, v2, :cond_1

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs loadIdentities(Ljava/util/Properties;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

    .line 121
    invoke-static {p0, p1}, Lorg/apache/sshd/server/config/keys/ServerIdentity;->findIdentities(Ljava/util/Properties;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v0, "ids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/file/Path;>;"
    sget-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    invoke-static {v2, v0, v2, v1}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->loadIdentities(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Map;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/OpenOption;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1
.end method

.method public static varargs loadKeyPairProvider(Ljava/util/Properties;Z[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 2
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "supportedOnly"    # Z
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 105
    invoke-static {p0, p2}, Lorg/apache/sshd/server/config/keys/ServerIdentity;->loadIdentities(Ljava/util/Properties;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    .line 106
    .local v0, "ids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/KeyPair;>;"
    invoke-static {v0, p1}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->createKeyPairProvider(Ljava/util/Map;Z)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v1

    return-object v1
.end method

.method public static setKeyPairProvider(Lorg/apache/sshd/server/SshServer;Ljava/util/Properties;Z)Lorg/apache/sshd/server/SshServer;
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "supportedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/apache/sshd/server/SshServer;",
            ">(TS;",
            "Ljava/util/Properties;",
            "Z)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    .local p0, "server":Lorg/apache/sshd/server/SshServer;, "TS;"
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/server/config/keys/ServerIdentity;->loadKeyPairProvider(Ljava/util/Properties;Z[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v0

    .line 83
    .local v0, "provider":Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/SshServer;->setKeyPairProvider(Lorg/apache/sshd/common/keyprovider/KeyPairProvider;)V

    .line 87
    :cond_0
    return-object p0
.end method
