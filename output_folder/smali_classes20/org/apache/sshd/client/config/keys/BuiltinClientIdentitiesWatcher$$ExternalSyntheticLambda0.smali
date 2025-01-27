.class public final synthetic Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;

.field public final synthetic f$1:Lorg/apache/sshd/common/session/SessionContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;Lorg/apache/sshd/common/session/SessionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;

    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/session/SessionContext;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;

    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/session/SessionContext;

    check-cast p1, Ljava/security/KeyPair;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;->lambda$loadKeys$0$org-apache-sshd-client-config-keys-BuiltinClientIdentitiesWatcher(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/KeyPair;)Z

    move-result p1

    return p1
.end method
