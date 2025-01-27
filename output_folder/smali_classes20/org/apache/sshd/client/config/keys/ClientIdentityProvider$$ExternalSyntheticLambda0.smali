.class public final synthetic Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;


# instance fields
.field public final synthetic f$0:Ljava/security/KeyPair;


# direct methods
.method public synthetic constructor <init>(Ljava/security/KeyPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$$ExternalSyntheticLambda0;->f$0:Ljava/security/KeyPair;

    return-void
.end method


# virtual methods
.method public final getClientIdentities(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$$ExternalSyntheticLambda0;->f$0:Ljava/security/KeyPair;

    invoke-static {v0, p1}, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;->lambda$of$0(Ljava/security/KeyPair;Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
