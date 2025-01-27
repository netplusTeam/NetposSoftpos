.class public Lorg/apache/sshd/server/channel/PuttyRequestHandler;
.super Lorg/apache/sshd/common/channel/AbstractChannelRequestHandler;
.source "PuttyRequestHandler.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/channel/PuttyRequestHandler;

.field public static final PUTTY_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_SUFFIX:Ljava/lang/String; = "@putty.projects.tartarus.org"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    sget-object v0, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ICRNL:Lorg/apache/sshd/common/channel/PtyMode;

    sget-object v2, Lorg/apache/sshd/common/channel/PtyMode;->ONLCR:Lorg/apache/sshd/common/channel/PtyMode;

    .line 45
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->PUTTY_OPTIONS:Ljava/util/Set;

    .line 47
    new-instance v0, Lorg/apache/sshd/server/channel/PuttyRequestHandler;

    invoke-direct {v0}, Lorg/apache/sshd/server/channel/PuttyRequestHandler;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->INSTANCE:Lorg/apache/sshd/server/channel/PuttyRequestHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/sshd/common/channel/AbstractChannelRequestHandler;-><init>()V

    .line 51
    return-void
.end method

.method public static isPuttyClient(Ljava/lang/String;)Z
    .locals 3
    .param p0, "clientVersion"    # Ljava/lang/String;

    .line 106
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const-string v1, "SSH-2.0-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "putty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0
.end method

.method public static isPuttyClient(Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p0, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 97
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/session/Session;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->isPuttyClient(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPuttyRequest(Ljava/lang/String;)Z
    .locals 3
    .param p0, "request"    # Ljava/lang/String;

    .line 87
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const-string v1, "@putty.projects.tartarus.org"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static resolveShellTtyOptions(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    .local p0, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    sget-object v0, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->PUTTY_OPTIONS:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/PtyMode;->createEnabledOptions(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 113
    .local v0, "resolved":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lorg/apache/sshd/common/channel/Channel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->process(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 8
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p2}, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->isPuttyRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "@putty.projects.tartarus.org"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "opcode":Ljava/lang/String;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->processPuttyOpcode(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v1

    return-object v1
.end method

.method protected processPuttyOpcode(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 3
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "opcode"    # Ljava/lang/String;
    .param p4, "wantReply"    # Z
    .param p5, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    const-string v0, "simple"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 67
    :cond_0
    const-string/jumbo v0, "winadj"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPuttyOpcode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")[buffer size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {p5}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][reply="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 79
    :cond_2
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0
.end method
