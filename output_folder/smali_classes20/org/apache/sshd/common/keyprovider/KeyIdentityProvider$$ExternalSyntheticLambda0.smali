.class public final synthetic Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;


# instance fields
.field public final synthetic f$0:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->lambda$wrapKeyPairs$0(Ljava/lang/Iterable;Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
