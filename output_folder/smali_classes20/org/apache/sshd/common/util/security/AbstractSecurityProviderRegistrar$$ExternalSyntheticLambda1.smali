.class public final synthetic Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;

.field public final synthetic f$1:Ljava/lang/Class;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;

    iput-object p2, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;

    iget-object v1, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/sshd/common/util/security/AbstractSecurityProviderRegistrar;->lambda$isSecurityEntitySupported$1$org-apache-sshd-common-util-security-AbstractSecurityProviderRegistrar(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
