.class public interface abstract Lorg/apache/sshd/common/cipher/CipherInformation;
.super Ljava/lang/Object;
.source "CipherInformation.java"

# interfaces
.implements Lorg/apache/sshd/common/AlgorithmNameProvider;
.implements Lorg/apache/sshd/common/keyprovider/KeySizeIndicator;


# virtual methods
.method public abstract getCipherBlockSize()I
.end method

.method public abstract getIVSize()I
.end method

.method public abstract getKdfSize()I
.end method

.method public abstract getTransformation()Ljava/lang/String;
.end method
