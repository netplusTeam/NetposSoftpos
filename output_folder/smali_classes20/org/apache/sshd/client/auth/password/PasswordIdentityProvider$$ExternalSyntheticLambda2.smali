.class public final synthetic Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;


# instance fields
.field public final synthetic f$0:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final loadPasswords()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->lambda$wrapPasswords$2(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
