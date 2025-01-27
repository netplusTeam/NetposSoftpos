.class public abstract Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;
.super Ljava/lang/Object;
.source "AbstractKeyPairIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TI;>;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/client/session/ClientSession;",
        ">;",
        "Lorg/apache/sshd/client/session/ClientSessionHolder;"
    }
.end annotation


# instance fields
.field private final session:Lorg/apache/sshd/client/session/ClientSession;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/client/session/ClientSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;

    .line 38
    .local p0, "this":Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;, "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "No session"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;->session:Lorg/apache/sshd/client/session/ClientSession;

    .line 40
    return-void
.end method


# virtual methods
.method public final getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 44
    .local p0, "this":Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;, "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<TI;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;->session:Lorg/apache/sshd/client/session/ClientSession;

    return-object v0
.end method

.method public final getSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 49
    .local p0, "this":Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;, "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<TI;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 33
    .local p0, "this":Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;, "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<TI;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 54
    .local p0, "this":Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;, "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<TI;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No removal allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    .local p0, "this":Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;, "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<TI;>;"
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

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
