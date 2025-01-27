.class public Lorg/apache/sshd/client/kex/DHGEXClient;
.super Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;
.source "DHGEXClient.java"


# static fields
.field public static final PROP_DHGEX_CLIENT_MAX_KEY:Ljava/lang/String; = "dhgex-client-max"

.field public static final PROP_DHGEX_CLIENT_MIN_KEY:Ljava/lang/String; = "dhgex-client-min"

.field public static final PROP_DHGEX_CLIENT_PRF_KEY:Ljava/lang/String; = "dhgex-client-prf"


# instance fields
.field protected dh:Lorg/apache/sshd/common/kex/AbstractDH;

.field protected expected:B

.field protected final factory:Lorg/apache/sshd/common/kex/DHFactory;

.field protected g:[B

.field protected max:I

.field protected min:I

.field protected p:[B

.field protected prf:I


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/kex/DHFactory;Lorg/apache/sshd/common/session/Session;)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 60
    invoke-direct {p0, p2}, Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;-><init>(Lorg/apache/sshd/common/session/Session;)V

    .line 61
    const-string v0, "No factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/DHFactory;

    iput-object v0, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    .line 64
    const-string v0, "dhgex-client-min"

    const/16 v1, 0x400

    invoke-static {p2, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->min:I

    .line 66
    nop

    .line 67
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMaxDHGroupExchangeKeySize()I

    move-result v0

    .line 66
    const-string v1, "dhgex-client-max"

    invoke-static {p2, v1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->max:I

    .line 68
    nop

    .line 69
    const/16 v1, 0x1000

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    const-string v1, "dhgex-client-prf"

    invoke-static {p2, v1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->prf:I

    .line 70
    return-void
.end method

.method public static newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    .locals 1
    .param p0, "delegate"    # Lorg/apache/sshd/common/kex/DHFactory;

    .line 78
    new-instance v0, Lorg/apache/sshd/client/kex/DHGEXClient$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/kex/DHGEXClient$1;-><init>(Lorg/apache/sshd/common/kex/DHFactory;)V

    return-object v0
.end method


# virtual methods
.method protected getDH(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/apache/sshd/common/kex/AbstractDH;
    .locals 3
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/kex/DHFactory;->create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/AbstractDH;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/DHFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init([B[B[B[B)V
    .locals 6
    .param p1, "v_s"    # [B
    .param p2, "v_c"    # [B
    .param p3, "i_s"    # [B
    .param p4, "i_c"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;->init([B[B[B[B)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/sshd/client/kex/DHGEXClient;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 103
    .local v0, "s":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->min:I

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->prf:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x4

    iget v5, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->max:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 104
    const-string v4, "init({})[{}] Send SSH_MSG_KEX_DH_GEX_REQUEST - min={}, prf={}, max={}"

    invoke-interface {v1, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget v1, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->max:I

    iget v3, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->min:I

    if-lt v1, v3, :cond_1

    iget v4, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->prf:I

    if-lt v4, v3, :cond_1

    if-lt v1, v4, :cond_1

    .line 112
    const/16 v1, 0x22

    const/16 v2, 0x20

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 113
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->min:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 114
    iget v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->prf:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 115
    iget v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->max:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 116
    invoke-interface {v0, v1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 118
    const/16 v2, 0x1f

    iput-byte v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->expected:B

    .line 119
    return-void

    .line 108
    .end local v1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/SshException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol error: bad parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->min:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->prf:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->max:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public next(ILorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 11
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/apache/sshd/client/kex/DHGEXClient;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 125
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 126
    .local v1, "debugEnabled":Z
    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 127
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->log:Lorg/slf4j/Logger;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p0, v8, v6

    aput-object v0, v8, v4

    .line 128
    invoke-static {p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    iget-byte v9, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->expected:B

    .line 129
    invoke-static {v9}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 127
    const-string v9, "next({})[{}] process command={} (expected={})"

    invoke-interface {v7, v9, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    iget-byte v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->expected:B

    if-ne p1, v7, :cond_7

    .line 138
    const/16 v7, 0x1f

    const/16 v8, 0x21

    if-ne p1, v7, :cond_2

    .line 139
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->p:[B

    .line 140
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->g:[B

    .line 142
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->p:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->g:[B

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/client/kex/DHGEXClient;->getDH(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/apache/sshd/common/kex/AbstractDH;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    .line 143
    invoke-virtual {v2}, Lorg/apache/sshd/common/kex/AbstractDH;->getHash()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    .line 144
    iget-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v2}, Lorg/apache/sshd/common/digest/Digest;->init()V

    .line 145
    iget-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    invoke-virtual {v2}, Lorg/apache/sshd/common/kex/AbstractDH;->getE()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->e:[B

    .line 147
    if-eqz v1, :cond_1

    .line 148
    iget-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->log:Lorg/slf4j/Logger;

    const-string v3, "next({})[{}] Send SSH_MSG_KEX_DH_GEX_INIT"

    invoke-interface {v2, v3, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    :cond_1
    const/16 v2, 0x20

    iget-object v3, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->e:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x8

    invoke-interface {v0, v2, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p2

    .line 153
    iget-object v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->e:[B

    invoke-virtual {p2, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 154
    invoke-interface {v0, p2}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 155
    iput-byte v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->expected:B

    .line 156
    return v6

    .line 159
    :cond_2
    if-ne p1, v8, :cond_6

    .line 160
    if-eqz v1, :cond_3

    .line 161
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v6

    aput-object v0, v8, v4

    iget v9, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->min:I

    .line 162
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    iget v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->prf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    iget v2, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->max:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    .line 161
    const-string v2, "next({})[{}] validate SSH_MSG_KEX_DH_GEX_REPLY - min={}, prf={}, max={}"

    invoke-interface {v7, v2, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_3
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v2

    .line 166
    .local v2, "k_s":[B
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->f:[B

    .line 167
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v3

    .line 168
    .local v3, "sig":[B
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->f:[B

    invoke-virtual {v7, v8}, Lorg/apache/sshd/common/kex/AbstractDH;->setF([B)V

    .line 169
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    invoke-virtual {v7}, Lorg/apache/sshd/common/kex/AbstractDH;->getK()[B

    move-result-object v7

    iput-object v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->k:[B

    .line 171
    new-instance v7, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v7, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    move-object p2, v7

    .line 172
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->serverKey:Ljava/security/PublicKey;

    .line 174
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->serverKey:Ljava/security/PublicKey;

    invoke-static {v7}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "keyAlg":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 180
    new-instance v8, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v8}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    move-object p2, v8

    .line 181
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->v_c:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 182
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->v_s:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 183
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->i_c:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 184
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->i_s:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 185
    invoke-virtual {p2, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 186
    iget v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->min:I

    int-to-long v8, v8

    invoke-virtual {p2, v8, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 187
    iget v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->prf:I

    int-to-long v8, v8

    invoke-virtual {p2, v8, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 188
    iget v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->max:I

    int-to-long v8, v8

    invoke-virtual {p2, v8, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 189
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->p:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 190
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->g:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 191
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->e:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 192
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->f:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 193
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->k:[B

    invoke-virtual {p2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 194
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v9

    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v10

    invoke-interface {v8, v9, v6, v10}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 195
    iget-object v6, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v6}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v6

    iput-object v6, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->h:[B

    .line 197
    nop

    .line 198
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getSignatureFactories()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v7}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 197
    const-string v8, "No verifier located for algorithm=%s"

    invoke-static {v6, v8, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/signature/Signature;

    .line 200
    .local v6, "verif":Lorg/apache/sshd/common/signature/Signature;
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->serverKey:Ljava/security/PublicKey;

    invoke-interface {v6, v0, v8}, Lorg/apache/sshd/common/signature/Signature;->initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V

    .line 201
    iget-object v8, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->h:[B

    invoke-interface {v6, v0, v8}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[B)V

    .line 202
    invoke-interface {v6, v0, v3}, Lorg/apache/sshd/common/signature/Signature;->verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 206
    return v4

    .line 203
    :cond_4
    new-instance v4, Lorg/apache/sshd/common/SshException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyExchange signature verification failed for key type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 176
    .end local v6    # "verif":Lorg/apache/sshd/common/signature/Signature;
    :cond_5
    new-instance v4, Lorg/apache/sshd/common/SshException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported server key type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->serverKey:Ljava/security/PublicKey;

    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->serverKey:Ljava/security/PublicKey;

    .line 177
    invoke-interface {v6}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    .end local v2    # "k_s":[B
    .end local v3    # "sig":[B
    .end local v7    # "keyAlg":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_7
    new-instance v2, Lorg/apache/sshd/common/SshException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol error: expected packet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/apache/sshd/client/kex/DHGEXClient;->expected:B

    .line 134
    invoke-static {v4}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    invoke-static {p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v2
.end method
