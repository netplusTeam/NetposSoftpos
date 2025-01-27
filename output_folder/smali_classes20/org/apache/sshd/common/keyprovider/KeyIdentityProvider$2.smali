.class final Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$2;
.super Ljava/lang/Object;
.source "KeyIdentityProvider.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->iterableOf(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/security/KeyPair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$providers:Ljava/util/Collection;

.field final synthetic val$session:Lorg/apache/sshd/common/session/SessionContext;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$2;->val$session:Lorg/apache/sshd/common/session/SessionContext;

    iput-object p2, p0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$2;->val$providers:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;

    iget-object v1, p0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$2;->val$session:Lorg/apache/sshd/common/session/SessionContext;

    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$2;->val$providers:Ljava/util/Collection;

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;-><init>(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[of(providers)]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
