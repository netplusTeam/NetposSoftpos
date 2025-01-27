.class public Lorg/apache/sshd/server/keyprovider/SimpleGeneratorHostKeyProvider;
.super Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;
.source "SimpleGeneratorHostKeyProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 45
    invoke-direct {p0}, Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/keyprovider/SimpleGeneratorHostKeyProvider;->setPath(Ljava/nio/file/Path;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected doReadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;)Ljava/lang/Iterable;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable<",
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

    .line 53
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v0, "r":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .local v1, "kp":Ljava/security/KeyPair;
    nop

    .line 59
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 61
    .end local v0    # "r":Ljava/io/ObjectInputStream;
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 53
    .end local v1    # "kp":Ljava/security/KeyPair;
    .restart local v0    # "r":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing classes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "r":Ljava/io/ObjectInputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    .restart local v0    # "r":Ljava/io/ObjectInputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method protected doWriteKeyPair(Lorg/apache/sshd/common/NamedResource;Ljava/security/KeyPair;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p2, "kp"    # Ljava/security/KeyPair;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v0, "w":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 70
    .end local v0    # "w":Ljava/io/ObjectOutputStream;
    return-void

    .line 67
    .restart local v0    # "w":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "w":Ljava/io/ObjectOutputStream;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "kp":Ljava/security/KeyPair;
    .end local p3    # "outputStream":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .restart local v0    # "w":Ljava/io/ObjectOutputStream;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "kp":Ljava/security/KeyPair;
    .restart local p3    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method
