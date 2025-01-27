.class public final synthetic Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;


# instance fields
.field public final synthetic f$0:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final loadHostKeys()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;->lambda$wrap$1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
