.class public interface abstract Lorg/apache/sshd/common/session/SessionContext;
.super Ljava/lang/Object;
.source "SessionContext.java"

# interfaces
.implements Lorg/apache/sshd/common/util/net/ConnectionEndpointsIndicator;
.implements Lorg/apache/sshd/common/auth/UsernameHolder;
.implements Lorg/apache/sshd/common/session/SessionHeartbeatController;
.implements Lorg/apache/sshd/common/AttributeStore;
.implements Lorg/apache/sshd/common/Closeable;


# static fields
.field public static final DEFAULT_SSH_VERSION_PREFIX:Ljava/lang/String; = "SSH-2.0-"

.field public static final FALLBACK_SSH_VERSION_PREFIX:Ljava/lang/String; = "SSH-1.99-"

.field public static final MAX_VERSION_LINE_LENGTH:I = 0x100


# direct methods
.method public static isDataIntegrityTransport(Lorg/apache/sshd/common/session/SessionContext;)Z
    .locals 5
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;

    .line 204
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 205
    return v0

    .line 208
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->MAC_PROPOSALS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 209
    .local v2, "opt":Lorg/apache/sshd/common/kex/KexProposalOption;
    invoke-interface {p0, v2}, Lorg/apache/sshd/common/session/SessionContext;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    return v0

    .line 213
    .end local v2    # "opt":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isSecureSessionTransport(Lorg/apache/sshd/common/session/SessionContext;)Z
    .locals 5
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;

    .line 181
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 182
    return v0

    .line 185
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->CIPHER_PROPOSALS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 186
    .local v2, "opt":Lorg/apache/sshd/common/kex/KexProposalOption;
    invoke-interface {p0, v2}, Lorg/apache/sshd/common/session/SessionContext;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 188
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 191
    .end local v2    # "opt":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 189
    .restart local v2    # "opt":Lorg/apache/sshd/common/kex/KexProposalOption;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    return v0

    .line 193
    .end local v2    # "opt":Lorg/apache/sshd/common/kex/KexProposalOption;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidVersionPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .line 169
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "SSH-2.0-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SSH-1.99-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract getCipherInformation(Z)Lorg/apache/sshd/common/cipher/CipherInformation;
.end method

.method public abstract getClientKexProposals()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClientVersion()Ljava/lang/String;
.end method

.method public abstract getCompressionInformation(Z)Lorg/apache/sshd/common/compression/CompressionInformation;
.end method

.method public abstract getKexNegotiationResult()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKexState()Lorg/apache/sshd/common/kex/KexState;
.end method

.method public abstract getMacInformation(Z)Lorg/apache/sshd/common/mac/MacInformation;
.end method

.method public abstract getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;
.end method

.method public abstract getServerKexProposals()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerVersion()Ljava/lang/String;
.end method

.method public abstract getSessionId()[B
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isServerSession()Z
.end method
