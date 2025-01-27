.class final enum Lorg/apache/sshd/common/kex/BuiltinDHFactories$3;
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

    .line 75
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

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$3;->create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/DHG;

    move-result-object p1

    return-object p1
.end method

.method public varargs create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/DHG;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/sshd/common/kex/DHG;

    sget-object v1, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha256:Lorg/apache/sshd/common/digest/BuiltinDigests;

    new-instance v2, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/sshd/common/kex/DHGroupData;->getP14()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/sshd/common/kex/DHGroupData;->getG()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/common/kex/DHG;-><init>(Lorg/apache/sshd/common/Factory;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No accepted parameters for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$3;->getName()Ljava/lang/String;

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

    .line 86
    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isDHOakelyGroupSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha256:Lorg/apache/sshd/common/digest/BuiltinDigests;

    invoke-virtual {v0}, Lorg/apache/sshd/common/digest/BuiltinDigests;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
