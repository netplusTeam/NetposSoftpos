.class public interface abstract Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;
.super Ljava/lang/Object;
.source "PublicKeyRawDataReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/net/URL;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/net/URL;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/URLResource;

    invoke-direct {v0, p2}, Lorg/apache/sshd/common/util/io/resource/URLResource;-><init>(Ljava/net/URL;)V

    invoke-interface {p0, p1, v0, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public varargs readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .param p4, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v0, p2, p4}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    invoke-interface {p0, p1, v0, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public varargs readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, p2, v0, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/BufferedReader;)Ljava/security/PublicKey;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "rdr"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/BufferedReader;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    invoke-static {p3}, Lorg/apache/sshd/common/util/io/IoUtils;->readAllLines(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    return-object v1

    .line 113
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    throw v1
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/InputStream;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    .line 93
    const-string v1, "No stream instance"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    const-string v2, "No charset"

    invoke-static {p4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 92
    .local v0, "reader":Ljava/io/Reader;
    nop

    .line 94
    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/Reader;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 94
    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    .end local v0    # "reader":Ljava/io/Reader;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "stream":Ljava/io/InputStream;
    .end local p4    # "cs":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .restart local v0    # "reader":Ljava/io/Reader;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "stream":Ljava/io/InputStream;
    .restart local p4    # "cs":Ljava/nio/charset/Charset;
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

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/Reader;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "rdr"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/Reader;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    new-instance v0, Ljava/io/BufferedReader;

    const-string v1, "No reader instance"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 102
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/BufferedReader;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 102
    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "rdr":Ljava/io/Reader;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "rdr":Ljava/io/Reader;
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

.method public abstract readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "*>;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    .local p2, "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/util/io/resource/IoResource;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "*>;",
            "Ljava/nio/charset/Charset;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<TPUB;>;"
    .local p2, "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    const-string v0, "No resource data"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/io/resource/IoResource;

    invoke-interface {v0}, Lorg/apache/sshd/common/util/io/resource/IoResource;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 79
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0, p1, p2, v0, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 79
    :cond_0
    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    .end local p3    # "cs":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resource":Lorg/apache/sshd/common/util/io/resource/IoResource;, "Lorg/apache/sshd/common/util/io/resource/IoResource<*>;"
    .restart local p3    # "cs":Ljava/nio/charset/Charset;
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
