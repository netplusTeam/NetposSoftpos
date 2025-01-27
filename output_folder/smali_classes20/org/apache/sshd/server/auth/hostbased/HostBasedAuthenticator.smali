.class public interface abstract Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;
.super Ljava/lang/Object;
.source "HostBasedAuthenticator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract authenticate(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation
.end method
