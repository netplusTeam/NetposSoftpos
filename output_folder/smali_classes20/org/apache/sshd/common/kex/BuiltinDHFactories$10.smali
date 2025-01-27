.class final enum Lorg/apache/sshd/common/kex/BuiltinDHFactories$10;
.super Lorg/apache/sshd/common/kex/BuiltinDHFactories;
.source "BuiltinDHFactories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/kex/BuiltinDHFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/kex/BuiltinDHFactories$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/AbstractDH;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$10;->create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/ECDH;

    move-result-object p1

    return-object p1
.end method

.method public varargs create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/ECDH;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lorg/apache/sshd/common/kex/ECDH;

    sget-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->nistp256:Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/kex/ECDH;-><init>(Lorg/apache/sshd/common/cipher/ECCurves;)V

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No accepted parameters for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$10;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported()Z
    .locals 1

    .line 198
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->nistp256:Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->isSupported()Z

    move-result v0

    return v0
.end method
