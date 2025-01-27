.class public interface abstract Lorg/apache/sshd/common/config/keys/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Lorg/apache/sshd/common/AlgorithmNameProvider;
.implements Lorg/apache/sshd/common/NamedResource;
.implements Lorg/apache/sshd/common/OptionalFeature;
.implements Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;


# virtual methods
.method public abstract getPrivateKeyType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublicKeyType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end method
