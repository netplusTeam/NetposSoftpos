.class public interface abstract Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;
.super Ljava/lang/Object;


# virtual methods
.method public abstract build([B)Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public abstract getAlgorithm()I
.end method

.method public abstract getSecureRandom()Ljava/security/SecureRandom;
.end method
