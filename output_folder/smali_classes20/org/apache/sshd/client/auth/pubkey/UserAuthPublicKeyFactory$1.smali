.class final Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory$1;
.super Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;
.source "UserAuthPublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Lorg/apache/sshd/client/session/ClientSession;

    invoke-super {p0, p1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getSignatureFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSignatureFactories(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 44
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not allowed to change default instance signature factories"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
