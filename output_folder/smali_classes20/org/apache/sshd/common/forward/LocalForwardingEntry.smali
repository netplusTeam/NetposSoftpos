.class public Lorg/apache/sshd/common/forward/LocalForwardingEntry;
.super Lorg/apache/sshd/common/util/net/SshdSocketAddress;
.source "LocalForwardingEntry.java"


# static fields
.field private static final serialVersionUID:J = 0x5e125f4139dbc15L


# instance fields
.field private final alias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 47
    invoke-direct {p0, p1, p3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 48
    const-string v0, "No host alias"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->alias:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 3
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "bound"    # Ljava/net/InetSocketAddress;

    .line 38
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;-><init>(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 3
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "bound"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 43
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public static findMatchingEntry(Ljava/lang/String;ILjava/util/Collection;)Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/forward/LocalForwardingEntry;",
            ">;)",
            "Lorg/apache/sshd/common/forward/LocalForwardingEntry;"
        }
    .end annotation

    .line 91
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/forward/LocalForwardingEntry;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-lez p1, :cond_4

    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/forward/LocalForwardingEntry;

    .line 96
    .local v2, "e":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    invoke-virtual {v2}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getPort()I

    move-result v3

    if-ne p1, v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    :cond_1
    return-object v2

    .line 99
    .end local v2    # "e":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    :cond_2
    goto :goto_0

    .line 101
    :cond_3
    return-object v1

    .line 92
    :cond_4
    :goto_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 74
    invoke-super {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getAlias()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected isEquivalent(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z
    .locals 4
    .param p1, "that"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 57
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->isEquivalent(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/sshd/common/forward/LocalForwardingEntry;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/forward/LocalForwardingEntry;

    .line 59
    .local v0, "entry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const/4 v1, 0x1

    return v1

    .line 64
    .end local v0    # "entry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
