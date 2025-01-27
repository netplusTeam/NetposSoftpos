.class public final synthetic Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    invoke-static {p1}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->lambda$iterableOf$1(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Ljava/util/function/Supplier;

    move-result-object p1

    return-object p1
.end method
