.class public interface abstract Lorg/apache/sshd/common/mac/MacInformation;
.super Ljava/lang/Object;
.source "MacInformation.java"

# interfaces
.implements Lorg/apache/sshd/common/AlgorithmNameProvider;


# virtual methods
.method public abstract getBlockSize()I
.end method

.method public abstract getDefaultBlockSize()I
.end method

.method public isEncryptThenMac()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method
