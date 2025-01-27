.class public interface abstract Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
.super Ljava/lang/Object;
.source "KexExtensionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;,
        Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;
    }
.end annotation


# virtual methods
.method public handleKexCompressionMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public handleKexExtensionNegotiation(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "option"    # Lorg/apache/sshd/common/kex/KexProposalOption;
    .param p3, "nValue"    # Ljava/lang/String;
    .param p5, "cValue"    # Ljava/lang/String;
    .param p7, "sValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    .local p4, "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p6, "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    return-void
.end method

.method public handleKexExtensionRequest(Lorg/apache/sshd/common/session/Session;IILjava/lang/String;[B)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public handleKexExtensionsMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 10
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v6

    .line 161
    .local v6, "count":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "index":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 162
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v9

    .line 164
    .local v9, "data":[B
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    move-object v4, v8

    move-object v5, v9

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;->handleKexExtensionRequest(Lorg/apache/sshd/common/session/Session;IILjava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    goto :goto_1

    .line 161
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "data":[B
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 169
    .end local v7    # "index":I
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public handleKexInitProposal(Lorg/apache/sshd/common/session/Session;ZLjava/util/Map;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "initiator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Z",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    .local p3, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    return-void
.end method

.method public isKexExtensionsAvailable(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "phase"    # Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public sendKexExtensions(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "phase"    # Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    return-void
.end method
