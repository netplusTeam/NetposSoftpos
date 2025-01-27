.class public interface abstract Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;
.super Ljava/lang/Object;
.source "PrivateKeyObfuscator.java"


# virtual methods
.method public abstract appendPrivateKeyEncryptionContext(Ljava/lang/Appendable;Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Z)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract generateInitializationVector(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract getCipherName()Ljava/lang/String;
.end method

.method public abstract getSupportedKeySizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
