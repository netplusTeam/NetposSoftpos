.class final Lorg/apache/sshd/common/util/security/SecurityProviderChoice$2;
.super Ljava/lang/Object;
.source "SecurityProviderChoice.java"

# interfaces
.implements Lorg/apache/sshd/common/util/security/SecurityProviderChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->toSecurityProviderChoice(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final s:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 72
    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
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

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$2;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$2;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityProvider()Ljava/security/Provider;
    .locals 1

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNamedProviderUsed()Z
    .locals 1

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$2;->s:Ljava/lang/String;

    return-object v0
.end method
