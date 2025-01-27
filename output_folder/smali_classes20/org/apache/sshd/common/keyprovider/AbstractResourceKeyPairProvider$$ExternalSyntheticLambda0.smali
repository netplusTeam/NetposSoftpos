.class public final synthetic Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

.field public final synthetic f$1:Lorg/apache/sshd/common/session/SessionContext;

.field public final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    iput-object p2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/session/SessionContext;

    iput-object p3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    iget-object v1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/session/SessionContext;

    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->lambda$loadKeys$0$org-apache-sshd-common-keyprovider-AbstractResourceKeyPairProvider(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
