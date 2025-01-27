.class public final synthetic Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

.field public final synthetic f$1:Ljava/util/Collection;

.field public final synthetic f$2:Lorg/apache/sshd/common/session/SessionContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;Ljava/util/Collection;Lorg/apache/sshd/common/session/SessionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;->f$2:Lorg/apache/sshd/common/session/SessionContext;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;->f$2:Lorg/apache/sshd/common/session/SessionContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->lambda$loadKeys$0$org-apache-sshd-client-config-keys-LazyClientKeyIdentityProvider(Ljava/util/Collection;Lorg/apache/sshd/common/session/SessionContext;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
