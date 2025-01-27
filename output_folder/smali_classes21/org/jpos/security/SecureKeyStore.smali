.class public interface abstract Lorg/jpos/security/SecureKeyStore;
.super Ljava/lang/Object;
.source "SecureKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
    }
.end annotation


# virtual methods
.method public abstract getKey(Ljava/lang/String;)Lorg/jpos/security/SecureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jpos/security/SecureKey;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation
.end method

.method public abstract getKeys()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jpos/security/SecureKey;",
            ">()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation
.end method

.method public abstract setKey(Ljava/lang/String;Lorg/jpos/security/SecureKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
        }
    .end annotation
.end method
