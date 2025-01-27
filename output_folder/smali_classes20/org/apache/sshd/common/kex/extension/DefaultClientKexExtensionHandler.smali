.class public Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "DefaultClientKexExtensionHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;


# static fields
.field public static final CLIENT_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_EXTRA_SIGNATURES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;

.field public static final SERVER_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    invoke-direct {v0}, Lorg/apache/sshd/common/AttributeRepository$AttributeKey;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->CLIENT_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    .line 64
    new-instance v0, Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    invoke-direct {v0}, Lorg/apache/sshd/common/AttributeRepository$AttributeKey;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->SERVER_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    .line 66
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v1, "rsa-sha2-256"

    const-string v2, "rsa-sha2-512"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->DEFAULT_EXTRA_SIGNATURES:Ljava/util/NavigableSet;

    .line 72
    new-instance v0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->INSTANCE:Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic lambda$isKexExtensionsAvailable$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 121
    const-string v0, "ext-info-s"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$resolveUpdatedSignatureFactories$1(Ljava/lang/String;Lorg/apache/sshd/common/NamedFactory;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "s"    # Lorg/apache/sshd/common/NamedFactory;

    .line 208
    invoke-interface {p1}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleKexExtensionRequest(Lorg/apache/sshd/common/session/Session;IILjava/lang/String;[B)Z
    .locals 2
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

    .line 154
    const-string v0, "server-sig-algs"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;

    invoke-virtual {v0, p5}, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->parseExtension([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 159
    .local v0, "sigAlgos":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->updateAvailableSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;)Ljava/util/List;

    .line 160
    const/4 v1, 0x0

    return v1
.end method

.method public handleKexInitProposal(Lorg/apache/sshd/common/session/Session;ZLjava/util/Map;)V
    .locals 4
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

    .line 139
    .local p3, "proposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->isServerSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->CLIENT_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->SERVER_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    :goto_0
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p3}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/common/session/Session;->setAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "handleKexInitProposal({})[initiator={}] proposal={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_2
    return-void
.end method

.method public isKexExtensionsAvailable(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;)Z
    .locals 10
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "phase"    # Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->isServerSession()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 85
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->PROPOSAL:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    const/4 v2, 0x1

    if-eq p2, v1, :cond_1

    .line 86
    return v2

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 91
    .local v1, "debugEnabled":Z
    sget-object v3, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->CLIENT_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    invoke-interface {p1, v3}, Lorg/apache/sshd/common/session/Session;->getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 92
    .local v3, "clientProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    sget-object v4, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->SERVER_PROPOSAL_KEY:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    invoke-interface {p1, v4}, Lorg/apache/sshd/common/session/Session;->getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 93
    .local v4, "serverProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Map;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    .line 94
    if-eqz v1, :cond_2

    .line 95
    iget-object v5, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    aput-object p2, v8, v2

    aput-object v3, v8, v7

    aput-object v4, v8, v6

    const-string v2, "isKexExtensionsAvailable({})[{}] already sent proposal={} (server={})"

    invoke-interface {v5, v2, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_2
    return v0

    .line 112
    :cond_3
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 113
    if-eqz v1, :cond_4

    .line 114
    iget-object v2, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const-string v5, "isKexExtensionsAvailable({})[{}] no server proposal"

    invoke-interface {v2, v5, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    :cond_4
    return v0

    .line 119
    :cond_5
    sget-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 120
    .local v5, "algos":Ljava/lang/String;
    const/16 v8, 0x2c

    invoke-static {v5, v8}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler$$ExternalSyntheticLambda0;-><init>()V

    .line 121
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 122
    invoke-interface {v8}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v8

    const/4 v9, 0x0

    .line 123
    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 124
    .local v8, "extDeclared":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 125
    if-eqz v1, :cond_6

    .line 126
    iget-object v9, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object p2, v6, v2

    aput-object v5, v6, v7

    const-string v2, "isKexExtensionsAvailable({})[{}] server proposal does not include extension indicator: {}"

    invoke-interface {v9, v2, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_6
    return v0

    .line 132
    :cond_7
    return v2

    .line 81
    .end local v1    # "debugEnabled":Z
    .end local v3    # "clientProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v4    # "serverProposal":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .end local v5    # "algos":Ljava/lang/String;
    .end local v8    # "extDeclared":Ljava/lang/String;
    :cond_8
    :goto_0
    return v0
.end method

.method public resolvePreferredSignaturePosition(Lorg/apache/sshd/common/session/Session;Ljava/util/List;Lorg/apache/sshd/common/NamedFactory;)I
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    .local p2, "factories":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local p3, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    invoke-static {p2, p3}, Lorg/apache/sshd/common/signature/SignatureFactory;->resolvePreferredSignaturePosition(Ljava/util/List;Lorg/apache/sshd/common/NamedFactory;)I

    move-result v0

    return v0
.end method

.method public resolveRequestedSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    .local p2, "extraAlgos":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "toAdd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 272
    .local v1, "debugEnabled":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "algo":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->resolveRequestedSignatureFactory(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Lorg/apache/sshd/common/NamedFactory;

    move-result-object v4

    .line 274
    .local v4, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    if-nez v4, :cond_2

    .line 275
    if-eqz v1, :cond_1

    .line 276
    iget-object v5, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const-string v6, "resolveRequestedSignatureFactories({}) skip {} - no factory found"

    invoke-interface {v5, v6, p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_2
    instance-of v5, v4, Lorg/apache/sshd/common/OptionalFeature;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lorg/apache/sshd/common/OptionalFeature;

    invoke-interface {v5}, Lorg/apache/sshd/common/OptionalFeature;->isSupported()Z

    move-result v5

    if-nez v5, :cond_3

    .line 282
    if-eqz v1, :cond_1

    .line 283
    iget-object v5, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const-string v6, "resolveRequestedSignatureFactories({}) skip {} - not supported"

    invoke-interface {v5, v6, p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    .line 291
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v3    # "algo":Ljava/lang/String;
    .end local v4    # "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    goto :goto_0

    .line 294
    :cond_5
    return-object v0
.end method

.method public resolveRequestedSignatureFactory(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Lorg/apache/sshd/common/NamedFactory;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-static {p2}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures;

    move-result-object v0

    return-object v0
.end method

.method public resolveUpdatedSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    .local p2, "available":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local p3, "extraAlgos":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 194
    .local v0, "debugEnabled":Z
    nop

    .line 195
    invoke-virtual {p0, p1, p3}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->resolveRequestedSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 196
    .local v1, "toAdd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v2, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 199
    invoke-static {p2}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object p3, v4, v3

    .line 198
    const-string v3, "resolveUpdatedSignatureFactories({}) Nothing to add to {} out of {}"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-object p2

    .line 204
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/NamedFactory;

    .line 206
    .local v4, "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    invoke-interface {v4}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 209
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    const/4 v7, 0x0

    .line 210
    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/NamedFactory;

    .line 211
    .local v6, "a":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    if-nez v6, :cond_2

    .line 212
    goto :goto_1

    .line 215
    :cond_2
    if-eqz v0, :cond_3

    .line 216
    iget-object v7, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const-string v8, "resolveUpdatedSignatureFactories({}) skip {} - already available"

    invoke-interface {v7, v8, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 220
    add-int/lit8 v2, v2, -0x1

    .line 204
    .end local v4    # "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "a":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    .line 223
    .end local v2    # "index":I
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->updateAvailableSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public updateAvailableSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    .local p2, "extraAlgos":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->getSignatureFactories()Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    nop

    .line 168
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->resolveUpdatedSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "updated":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-object v2, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string/jumbo v4, "updateAvailableSignatureFactories({}) available={}, updated={}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    invoke-interface {p1, v1}, Lorg/apache/sshd/common/session/Session;->setSignatureFactories(Ljava/util/List;)V

    .line 177
    :cond_1
    return-object v1
.end method

.method public updateAvailableSignatureFactories(Lorg/apache/sshd/common/session/Session;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p2, "available":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local p3, "toAdd":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 230
    .local v0, "debugEnabled":Z
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    .line 233
    invoke-static {p2}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string/jumbo v3, "updateAvailableSignatureFactories({}) nothing to add to {}"

    invoke-interface {v1, v3, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    :cond_0
    return-object p2

    .line 238
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 239
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v1, "updated":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/NamedFactory;

    .line 243
    .local v3, "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    invoke-virtual {p0, p1, v1, v3}, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->resolvePreferredSignaturePosition(Lorg/apache/sshd/common/session/Session;Ljava/util/List;Lorg/apache/sshd/common/NamedFactory;)I

    move-result v4

    .line 244
    .local v4, "index":I
    if-eqz v0, :cond_2

    .line 245
    iget-object v5, p0, Lorg/apache/sshd/common/kex/extension/DefaultClientKexExtensionHandler;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "updateAvailableSignatureFactories({}) add {} at position={}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_2
    if-ltz v4, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_1

    .line 250
    :cond_3
    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 248
    :cond_4
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v3    # "f":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    .end local v4    # "index":I
    :goto_2
    goto :goto_0

    .line 254
    :cond_5
    return-object v1
.end method
