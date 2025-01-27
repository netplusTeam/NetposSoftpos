.class final Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;
.super Ljava/lang/Object;
.source "ClientIdentityProvider.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;->lazyKeysLoader(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Predicate;)Ljava/lang/Iterable;
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
.field final synthetic val$filter:Ljava/util/function/Predicate;

.field final synthetic val$kpExtractor:Ljava/util/function/Function;

.field final synthetic val$providers:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Predicate;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;->val$providers:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;->val$kpExtractor:Ljava/util/function/Function;

    iput-object p3, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;->val$filter:Ljava/util/function/Predicate;

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

    .line 94
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;->val$providers:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;->val$kpExtractor:Ljava/util/function/Function;

    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;->val$filter:Ljava/util/function/Predicate;

    invoke-static {v0, v1, v2}, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;->lazyKeysIterator(Ljava/util/Iterator;Ljava/util/function/Function;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[lazy-iterable]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
