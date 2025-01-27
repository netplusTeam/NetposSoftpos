.class final Lorg/apache/sshd/server/kex/DHGServer$1;
.super Ljava/lang/Object;
.source "DHGServer.java"

# interfaces
.implements Lorg/apache/sshd/common/kex/KeyExchangeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/server/kex/DHGServer;->newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$factory:Lorg/apache/sshd/common/kex/DHFactory;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/kex/DHFactory;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/server/kex/DHGServer$1;->val$factory:Lorg/apache/sshd/common/kex/DHFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyExchange(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/kex/KeyExchange;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/sshd/server/kex/DHGServer;

    iget-object v1, p0, Lorg/apache/sshd/server/kex/DHGServer$1;->val$factory:Lorg/apache/sshd/common/kex/DHFactory;

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/server/kex/DHGServer;-><init>(Lorg/apache/sshd/common/kex/DHFactory;Lorg/apache/sshd/common/session/Session;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer$1;->val$factory:Lorg/apache/sshd/common/kex/DHFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/DHFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/common/NamedFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/apache/sshd/common/kex/KeyExchange;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lorg/apache/sshd/server/kex/DHGServer$1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method
