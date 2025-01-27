.class public interface abstract Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;
.super Ljava/lang/Object;
.source "KeyPairResourceLoader.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

.field public static final MAX_CIPHER_NAME_LENGTH:I = 0x100

.field public static final MAX_KEY_COMMENT_LENGTH:I = 0x400

.field public static final MAX_KEY_TYPE_NAME_LENGTH:I = 0x100

.field public static final MAX_PRIVATE_KEY_DATA_SIZE:I = 0x3fff8

.field public static final MAX_PUBLIC_KEY_DATA_SIZE:I = 0xfffe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->EMPTY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    return-void
.end method

.method public static synthetic lambda$static$0(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .locals 1
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p2, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "lines"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/net/URL;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/util/Collection;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/net/URL;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            ")",
            "Ljava/util/Collection<",
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

    .line 98
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/net/URL;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/net/URL;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;)Ljava/util/Collection;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/net/URL;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Collection<",
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

    .line 104
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/URLResource;

    invoke-direct {v0, p2}, Lorg/apache/sshd/common/util/io/resource/URLResource;-><init>(Ljava/net/URL;)V

    invoke-interface {p0, p1, v0, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public varargs loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/util/Collection;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "cs"    # Ljava/nio/charset/Charset;
    .param p5, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/util/Collection<",
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

    .line 92
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v0, p2, p5}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    invoke-interface {p0, p1, v0, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public varargs loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[Ljava/nio/file/OpenOption;)Ljava/util/Collection;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/util/Collection<",
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

    .line 86
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/BufferedReader;)Ljava/util/Collection;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "r"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/Collection<",
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

    .line 155
    invoke-static {p4}, Lorg/apache/sshd/common/util/io/IoUtils;->readAllLines(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    return-object v1

    .line 159
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    throw v1
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
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

    .line 132
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/Collection;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "stream"    # Ljava/io/InputStream;
    .param p5, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Collection<",
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

    .line 138
    new-instance v0, Ljava/io/InputStreamReader;

    .line 139
    const-string v1, "No stream instance"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    const-string v2, "No charset"

    invoke-static {p5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 138
    .local v0, "reader":Ljava/io/Reader;
    nop

    .line 140
    :try_start_0
    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/Reader;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 140
    return-object v1

    .line 138
    :catchall_0
    move-exception v1

    .end local v0    # "reader":Ljava/io/Reader;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "stream":Ljava/io/InputStream;
    .end local p5    # "cs":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .restart local v0    # "reader":Ljava/io/Reader;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "stream":Ljava/io/InputStream;
    .restart local p5    # "cs":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/Reader;)Ljava/util/Collection;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Collection<",
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

    .line 147
    new-instance v0, Ljava/io/BufferedReader;

    const-string v1, "No reader instance"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 148
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/BufferedReader;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 148
    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "r":Ljava/io/Reader;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "r":Ljava/io/Reader;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
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

    .line 124
    new-instance v0, Ljava/io/StringReader;

    if-nez p4, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "reader":Ljava/io/Reader;
    :try_start_0
    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/Reader;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 125
    return-object v1

    .line 124
    :catchall_0
    move-exception v1

    .end local v0    # "reader":Ljava/io/Reader;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "data":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    .restart local v0    # "reader":Ljava/io/Reader;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "data":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public abstract loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/util/Collection;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "*>;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            ")",
            "Ljava/util/Collection<",
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

    .line 110
    .local p2, "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/nio/charset/Charset;)Ljava/util/Collection;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "*>;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Collection<",
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

    .line 116
    .local p2, "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    const-string v0, "No resource data"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/io/resource/IoResource;

    invoke-interface {v0}, Lorg/apache/sshd/common/util/io/resource/IoResource;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 117
    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p4

    :try_start_0
    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 117
    :cond_0
    return-object v1

    .line 116
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "cs":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "cs":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method
