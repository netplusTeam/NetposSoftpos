.class public interface abstract Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
.super Ljava/lang/Object;
.source "ClientIdentityLoaderHolder.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$loaderHolderOf$0(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .locals 0
    .param p0, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 34
    return-object p0
.end method

.method public static loaderHolderOf(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .locals 1
    .param p0, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 34
    new-instance v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)V

    return-object v0
.end method


# virtual methods
.method public abstract getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
.end method
