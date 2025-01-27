.class public interface abstract Lorg/apache/sshd/common/config/keys/IdentityResourceLoader;
.super Ljava/lang/Object;
.source "IdentityResourceLoader.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        "PRV::",
        "Ljava/security/PrivateKey;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;"
    }
.end annotation


# static fields
.field public static final MAX_BIGINT_OCTETS_COUNT:I = 0x7fff


# virtual methods
.method public abstract getPrivateKeyType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPRV;>;"
        }
    .end annotation
.end method

.method public abstract getPublicKeyType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPUB;>;"
        }
    .end annotation
.end method
