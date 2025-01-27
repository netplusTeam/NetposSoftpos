.class public interface abstract Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
.super Ljava/lang/Object;
.source "FilePasswordProviderHolder.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$providerHolderOf$0(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 0
    .param p0, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 35
    return-object p0
.end method

.method public static providerHolderOf(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .locals 1
    .param p0, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 35
    new-instance v0, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V

    return-object v0
.end method


# virtual methods
.method public abstract getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
.end method
