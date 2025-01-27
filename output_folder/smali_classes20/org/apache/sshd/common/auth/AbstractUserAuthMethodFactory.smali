.class public abstract Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractUserAuthMethodFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/auth/UserAuthMethodFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/sshd/common/session/SessionContext;",
        "M::",
        "Lorg/apache/sshd/common/auth/UserAuthInstance<",
        "TS;>;>",
        "Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;",
        "Lorg/apache/sshd/common/auth/UserAuthMethodFactory<",
        "TS;TM;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    .local p0, "this":Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;, "Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory<TS;TM;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 37
    const-string v0, "No factory name provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;->name:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;, "Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory<TS;TM;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    .local p0, "this":Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;, "Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory<TS;TM;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
