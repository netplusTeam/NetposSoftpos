.class final enum Lorg/apache/sshd/common/kex/BuiltinDHFactories$9;
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

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/kex/BuiltinDHFactories$1;)V

    return-void
.end method


# virtual methods
.method public varargs create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/AbstractDH;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    .line 174
    new-instance v2, Lorg/apache/sshd/common/kex/DHG;

    sget-object v3, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha256:Lorg/apache/sshd/common/digest/BuiltinDigests;

    aget-object v0, p1, v0

    check-cast v0, Ljava/math/BigInteger;

    aget-object v1, p1, v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/sshd/common/kex/DHG;-><init>(Lorg/apache/sshd/common/Factory;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad parameters for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$9;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isGroupExchange()Z
    .locals 1

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 179
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isDHGroupExchangeSupported()Z

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
