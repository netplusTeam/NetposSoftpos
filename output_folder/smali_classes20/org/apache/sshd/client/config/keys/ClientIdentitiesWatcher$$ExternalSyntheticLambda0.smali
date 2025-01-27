.class public final synthetic Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;

.field public final synthetic f$1:Lorg/apache/sshd/common/session/SessionContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;Lorg/apache/sshd/common/session/SessionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;

    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/session/SessionContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;

    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/session/SessionContext;

    check-cast p1, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->lambda$loadKeys$0$org-apache-sshd-client-config-keys-ClientIdentitiesWatcher(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
