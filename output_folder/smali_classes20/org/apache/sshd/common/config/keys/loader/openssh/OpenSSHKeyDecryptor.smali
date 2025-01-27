.class public interface abstract Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyDecryptor;
.super Ljava/lang/Object;
.source "OpenSSHKeyDecryptor.java"


# virtual methods
.method public abstract decodePrivateKeyBytes(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;[BLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract isEncrypted()Z
.end method
