.class public final Lorg/apache/sshd/client/config/keys/ClientIdentity;
.super Ljava/lang/Object;
.source "ClientIdentity.java"


# static fields
.field public static final ID_FILE_PREFIX:Ljava/lang/String; = "id_"

.field public static final ID_FILE_SUFFIX:Ljava/lang/String; = ""

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
    new-instance v0, Lorg/apache/sshd/client/config/keys/ClientIdentity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentity$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/config/keys/ClientIdentity;->ID_GENERATOR:Ljava/util/function/Function;

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

.method public static getIdentityFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .line 95
    const-string v0, "id_"

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->getIdentityFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentityFileName(Lorg/apache/sshd/common/NamedResource;)Ljava/lang/String;
    .locals 1
    .param p0, "r"    # Lorg/apache/sshd/common/NamedResource;

    .line 82
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->getIdentityFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentityType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 72
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "id_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs loadDefaultIdentities(Ljava/nio/file/Path;ZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 7
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "strict"    # Z
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
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

    .line 189
    sget-object v3, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->NAMES:Ljava/util/NavigableSet;

    sget-object v4, Lorg/apache/sshd/client/config/keys/ClientIdentity;->ID_GENERATOR:Ljava/util/function/Function;

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->loadIdentities(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;ZLjava/util/Collection;Ljava/util/function/Function;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varargs loadDefaultIdentities(ZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 1
    .param p0, "strict"    # Z
    .param p1, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
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

    .line 167
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getDefaultKeysFolderPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->loadDefaultIdentities(Ljava/nio/file/Path;ZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varargs loadDefaultKeyPairProvider(Ljava/nio/file/Path;ZZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 2
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "strict"    # Z
    .param p2, "supportedOnly"    # Z
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 144
    invoke-static {p0, p1, p3, p4}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->loadDefaultIdentities(Ljava/nio/file/Path;ZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    .line 145
    .local v0, "ids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/KeyPair;>;"
    invoke-static {v0, p2}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->createKeyPairProvider(Ljava/util/Map;Z)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v1

    return-object v1
.end method

.method public static varargs loadDefaultKeyPairProvider(ZZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 1
    .param p0, "strict"    # Z
    .param p1, "supportedOnly"    # Z
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 119
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getDefaultKeysFolderPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->loadDefaultKeyPairProvider(Ljava/nio/file/Path;ZZLorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v0

    return-object v0
.end method

.method public static varargs loadIdentities(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;ZLjava/util/Collection;Ljava/util/function/Function;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "strict"    # Z
    .param p5, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
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

    .line 219
    .local p3, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, "idGenerator":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3, p4, p6}, Lorg/apache/sshd/client/config/keys/ClientIdentity;->scanIdentitiesFolder(Ljava/nio/file/Path;ZLjava/util/Collection;Ljava/util/function/Function;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    .line 220
    .local v0, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/file/Path;>;"
    sget-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    invoke-static {p0, v0, p5, v1}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->loadIdentities(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Map;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/OpenOption;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1
.end method

.method public static varargs scanIdentitiesFolder(Ljava/nio/file/Path;ZLjava/util/Collection;Ljava/util/function/Function;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 8
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "strict"    # Z
    .param p4, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
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

    .line 242
    .local p2, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "idGenerator":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-static {p0, p4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 250
    :cond_1
    sget-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->ISDIR:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    invoke-interface {v0, p0, p4}, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->infoOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Not a directory: %s"

    invoke-static {v0, v1, p0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 252
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 253
    .local v0, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/file/Path;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, "t":Ljava/lang/String;
    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 255
    .local v3, "fileName":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 256
    .local v4, "p":Ljava/nio/file/Path;
    invoke-static {v4, p4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 257
    goto :goto_0

    .line 260
    :cond_2
    if-eqz p1, :cond_3

    .line 261
    invoke-static {v4, p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->validateStrictKeyFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 262
    goto :goto_0

    .line 266
    :cond_3
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 267
    .local v5, "prev":Ljava/nio/file/Path;
    if-nez v5, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    const-string v7, "Multiple mappings for type=%s"

    invoke-static {v6, v7, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 268
    .end local v2    # "t":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "p":Ljava/nio/file/Path;
    .end local v5    # "prev":Ljava/nio/file/Path;
    goto :goto_0

    .line 270
    :cond_5
    return-object v0
.end method
