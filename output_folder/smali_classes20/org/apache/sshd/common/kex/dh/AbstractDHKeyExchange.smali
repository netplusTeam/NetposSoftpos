.class public abstract Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractDHKeyExchange.java"

# interfaces
.implements Lorg/apache/sshd/common/kex/KeyExchange;


# instance fields
.field protected e:[B

.field protected f:[B

.field protected h:[B

.field protected hash:Lorg/apache/sshd/common/digest/Digest;

.field protected i_c:[B

.field protected i_s:[B

.field protected k:[B

.field private final session:Lorg/apache/sshd/common/session/Session;

.field protected v_c:[B

.field protected v_s:[B


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 46
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 47
    const-string v0, "No session provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/Session;

    iput-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->session:Lorg/apache/sshd/common/session/Session;

    .line 48
    return-void
.end method


# virtual methods
.method public getH()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->h:[B

    return-object v0
.end method

.method public getHash()Lorg/apache/sshd/common/digest/Digest;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->hash:Lorg/apache/sshd/common/digest/Digest;

    return-object v0
.end method

.method public getK()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->k:[B

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->session:Lorg/apache/sshd/common/session/Session;

    return-object v0
.end method

.method public init([B[B[B[B)V
    .locals 1
    .param p1, "v_s"    # [B
    .param p2, "v_c"    # [B
    .param p3, "i_s"    # [B
    .param p4, "i_c"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    const-string v0, "No v_s value"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->v_s:[B

    .line 53
    const-string v0, "No v_c value"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->v_c:[B

    .line 54
    const-string v0, "No i_s value"

    invoke-static {p3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->i_s:[B

    .line 55
    const-string v0, "No i_c value"

    invoke-static {p4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->i_c:[B

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
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

    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;->getName()Ljava/lang/String;

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
