.class public Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleGeneratorHostKeyProvider;
.super Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;
.source "BouncyCastleGeneratorHostKeyProvider.java"


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 40
    invoke-direct {p0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleGeneratorHostKeyProvider;->setPath(Ljava/nio/file/Path;)V

    .line 42
    return-void
.end method

.method public static writePEMKeyPair(Ljava/security/KeyPair;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "kp"    # Ljava/security/KeyPair;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    .local v0, "w":Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;->close()V

    .line 68
    .end local v0    # "w":Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;
    return-void

    .line 63
    .restart local v0    # "w":Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;
    :catchall_0
    move-exception v1

    .end local v0    # "w":Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;
    .end local p0    # "kp":Ljava/security/KeyPair;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .restart local v0    # "w":Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;
    .restart local p0    # "kp":Ljava/security/KeyPair;
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static writePEMKeyPair(Ljava/security/KeyPair;Ljava/nio/file/Path;)V
    .locals 1
    .param p0, "kp"    # Ljava/security/KeyPair;
    .param p1, "targetPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleGeneratorHostKeyProvider;->writePEMKeyPair(Ljava/security/KeyPair;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    .line 52
    return-void
.end method

.method public static varargs writePEMKeyPair(Ljava/security/KeyPair;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 4
    .param p0, "kp"    # Ljava/security/KeyPair;
    .param p1, "targetPath"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 58
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleGeneratorHostKeyProvider;->writePEMKeyPair(Ljava/security/KeyPair;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 60
    .end local v0    # "os":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 57
    .restart local v0    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "os":Ljava/io/OutputStream;
    .end local p0    # "kp":Ljava/security/KeyPair;
    .end local p1    # "targetPath":Ljava/nio/file/Path;
    .end local p2    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .restart local v0    # "os":Ljava/io/OutputStream;
    .restart local p0    # "kp":Ljava/security/KeyPair;
    .restart local p1    # "targetPath":Ljava/nio/file/Path;
    .restart local p2    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
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


# virtual methods
.method protected doWriteKeyPair(Lorg/apache/sshd/common/NamedResource;Ljava/security/KeyPair;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p2, "kp"    # Ljava/security/KeyPair;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    invoke-static {p2, p3}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleGeneratorHostKeyProvider;->writePEMKeyPair(Ljava/security/KeyPair;Ljava/io/OutputStream;)V

    .line 48
    return-void
.end method
