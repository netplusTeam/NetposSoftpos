.class public abstract Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;
.source "AbstractPublicKeyEntryDecoder.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        "PRV::",
        "Ljava/security/PrivateKey;",
        ">",
        "Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver<",
        "TPUB;TPRV;>;",
        "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
        "TPUB;TPRV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TPUB;>;",
            "Ljava/lang/Class<",
            "TPRV;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder<TPUB;TPRV;>;"
    .local p1, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    .local p2, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<TPRV;>;"
    .local p3, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/keys/impl/AbstractKeyEntryResolver;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 40
    return-void
.end method
