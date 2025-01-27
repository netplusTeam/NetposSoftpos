.class final Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;
.super Ljava/lang/Object;
.source "SecurityProviderChoice.java"

# interfaces
.implements Lorg/apache/sshd/common/util/security/SecurityProviderChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->toSecurityProviderChoice(Ljava/security/Provider;)Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final s:Ljava/lang/String;

.field final synthetic val$provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 2

    .line 99
    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;->val$provider:Ljava/security/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Ljava/security/Provider;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;->s:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;->val$provider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityProvider()Ljava/security/Provider;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;->val$provider:Ljava/security/Provider;

    return-object v0
.end method

.method public isNamedProviderUsed()Z
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;->s:Ljava/lang/String;

    return-object v0
.end method
