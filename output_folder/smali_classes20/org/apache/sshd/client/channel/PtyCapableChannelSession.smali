.class public Lorg/apache/sshd/client/channel/PtyCapableChannelSession;
.super Lorg/apache/sshd/client/channel/ChannelSession;
.source "PtyCapableChannelSession.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;


# instance fields
.field private agentForwarding:Z

.field private final config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

.field private final env:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private usePty:Z


# direct methods
.method public constructor <init>(ZLorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)V
    .locals 4
    .param p1, "usePty"    # Z
    .param p2, "configHolder"    # Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 86
    .local p3, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lorg/apache/sshd/client/channel/ChannelSession;-><init>()V

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->env:Ljava/util/Map;

    .line 87
    iput-boolean p1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->usePty:Z

    .line 88
    new-instance v0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-direct {v0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;-><init>()V

    invoke-static {p2, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->copyConfiguration(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;)Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    iput-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    .line 90
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->resolvePtyType(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->setPtyType(Ljava/lang/String;)V

    .line 91
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 93
    .local v1, "ee":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->setEnv(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v1    # "ee":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic lambda$doOpenPty$0(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "modes"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p1, "mode"    # Lorg/apache/sshd/common/channel/PtyMode;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 284
    invoke-virtual {p1}, Lorg/apache/sshd/common/channel/PtyMode;->toInt()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 285
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 286
    return-void
.end method


# virtual methods
.method protected doOpenPty()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 247
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 248
    .local v1, "debugEnabled":Z
    iget-boolean v2, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->agentForwarding:Z

    const/16 v3, 0x40

    const/16 v4, 0x62

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    iget-object v2, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    const-string v6, "doOpenPty({}) Send agent forwarding request"

    invoke-interface {v2, v6, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_0
    const-string v2, "ssh-agent-factory-proxy-auth-channel-type"

    const-string v6, "auth-agent-req@openssh.com"

    invoke-interface {v0, v2, v6}, Lorg/apache/sshd/common/session/Session;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "channelType":Ljava/lang/String;
    invoke-interface {v0, v4, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v6

    .line 257
    .local v6, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getRecipient()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 258
    invoke-virtual {v6, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v6, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 260
    invoke-virtual {p0, v6}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 263
    .end local v2    # "channelType":Ljava/lang/String;
    .end local v6    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    iget-boolean v2, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->usePty:Z

    if-eqz v2, :cond_4

    .line 264
    if-eqz v1, :cond_2

    .line 265
    iget-object v2, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    iget-object v6, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    const-string v7, "doOpenPty({}) Send SSH_MSG_CHANNEL_REQUEST pty-req: {}"

    invoke-interface {v2, v7, p0, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    :cond_2
    const/16 v2, 0x7f

    invoke-interface {v0, v4, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 270
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getRecipient()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 271
    const-string v6, "pty-req"

    invoke-virtual {v2, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 273
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyColumns()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 275
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyLines()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 276
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyHeight()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 277
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyWidth()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 279
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyModes()Ljava/util/Map;

    move-result-object v6

    .line 280
    .local v6, "ptyModes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v7

    .line 281
    .local v7, "numModes":I
    new-instance v8, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    mul-int/lit8 v9, v7, 0x5

    add-int/2addr v9, v3

    invoke-direct {v8, v9, v5}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    move-object v3, v8

    .line 282
    .local v3, "modes":Lorg/apache/sshd/common/util/buffer/Buffer;
    if-lez v7, :cond_3

    .line 283
    new-instance v8, Lorg/apache/sshd/client/channel/PtyCapableChannelSession$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    invoke-interface {v6, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 288
    :cond_3
    invoke-virtual {v3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 289
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 293
    .end local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v3    # "modes":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "ptyModes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    .end local v7    # "numModes":I
    :cond_4
    iget-object v2, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->env:Ljava/util/Map;

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v2

    if-lez v2, :cond_6

    .line 294
    if-eqz v1, :cond_5

    .line 295
    iget-object v2, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->env:Ljava/util/Map;

    const-string v6, "doOpenPty({}) Send SSH_MSG_CHANNEL_REQUEST env: {}"

    invoke-interface {v2, v6, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    :cond_5
    iget-object v2, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->env:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 300
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 302
    .local v7, "value":Ljava/lang/Object;
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "str":Ljava/lang/String;
    nop

    .line 304
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x20

    .line 303
    invoke-interface {v0, v4, v9}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v9

    .line 305
    .local v9, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getRecipient()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 306
    const-string v10, "env"

    invoke-virtual {v9, v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v9, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 308
    invoke-virtual {v9, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v9, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v9}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 311
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    goto :goto_0

    .line 313
    :cond_6
    return-void
.end method

.method public getPtyColumns()I
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyColumns()I

    move-result v0

    return v0
.end method

.method public getPtyHeight()I
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyHeight()I

    move-result v0

    return v0
.end method

.method public getPtyLines()I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyLines()I

    move-result v0

    return v0
.end method

.method public getPtyModes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyModes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPtyType()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPtyWidth()I
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->getPtyWidth()I

    move-result v0

    return v0
.end method

.method public isAgentForwarding()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->agentForwarding:Z

    return v0
.end method

.method public isUsePty()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->usePty:Z

    return v0
.end method

.method protected resolvePtyType(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;)Ljava/lang/String;
    .locals 2
    .param p1, "configHolder"    # Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;

    .line 99
    invoke-interface {p1}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->getPtyType()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "ptyType":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    return-object v0

    .line 104
    :cond_0
    const-string v1, "TERM"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    return-object v0

    .line 109
    :cond_1
    const-string v1, "dummy"

    return-object v1
.end method

.method public sendWindowChange(II)V
    .locals 2
    .param p1, "columns"    # I
    .param p2, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyWidth()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->sendWindowChange(IIII)V

    .line 220
    return-void
.end method

.method public sendWindowChange(IIII)V
    .locals 5
    .param p1, "columns"    # I
    .param p2, "lines"    # I
    .param p3, "height"    # I
    .param p4, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const/4 v3, 0x1

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 224
    const-string v3, "sendWindowChange({}) cols={}, lines={}, height={}, width={}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->setPtyColumns(I)V

    .line 229
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->setPtyLines(I)V

    .line 230
    invoke-virtual {p0, p3}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->setPtyHeight(I)V

    .line 231
    invoke-virtual {p0, p4}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->setPtyWidth(I)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 234
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/16 v2, 0x62

    const/16 v3, 0x40

    invoke-interface {v0, v2, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 235
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getRecipient()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 236
    const-string/jumbo v3, "window-change"

    invoke-virtual {v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 238
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyColumns()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 239
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyLines()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 240
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyHeight()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 241
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->getPtyWidth()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 242
    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 243
    return-void
.end method

.method public setAgentForwarding(Z)V
    .locals 0
    .param p1, "agentForwarding"    # Z

    .line 131
    iput-boolean p1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->agentForwarding:Z

    .line 132
    return-void
.end method

.method public setEnv(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 210
    const-string v0, "No key provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    if-nez p2, :cond_0

    .line 212
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->env:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->env:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setPtyColumns(I)V
    .locals 1
    .param p1, "ptyColumns"    # I

    .line 159
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->setPtyColumns(I)V

    .line 160
    return-void
.end method

.method public setPtyHeight(I)V
    .locals 1
    .param p1, "ptyHeight"    # I

    .line 189
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->setPtyHeight(I)V

    .line 190
    return-void
.end method

.method public setPtyLines(I)V
    .locals 1
    .param p1, "ptyLines"    # I

    .line 169
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->setPtyLines(I)V

    .line 170
    return-void
.end method

.method public setPtyModes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "ptyModes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->setPtyModes(Ljava/util/Map;)V

    .line 200
    return-void
.end method

.method public setPtyType(Ljava/lang/String;)V
    .locals 1
    .param p1, "ptyType"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->setPtyType(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setPtyWidth(I)V
    .locals 1
    .param p1, "ptyWidth"    # I

    .line 179
    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->config:Lorg/apache/sshd/common/channel/PtyChannelConfiguration;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/channel/PtyChannelConfiguration;->setPtyWidth(I)V

    .line 180
    return-void
.end method

.method public setUsePty(Z)V
    .locals 0
    .param p1, "usePty"    # Z

    .line 139
    iput-boolean p1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->usePty:Z

    .line 140
    return-void
.end method

.method public setupSensibleDefaultPty()V
    .locals 5

    .line 114
    :try_start_0
    invoke-static {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setupSensitiveDefaultPtyConfiguration(Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;)Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 117
    const-string v3, "setupSensibleDefaultPty({}) Failed ({}) to setup: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupSensibleDefaultPty("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method
