.class public Lorg/apache/sshd/server/global/NoMoreSessionsHandler;
.super Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;
.source "NoMoreSessionsHandler.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/global/NoMoreSessionsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/sshd/server/global/NoMoreSessionsHandler;

    invoke-direct {v0}, Lorg/apache/sshd/server/global/NoMoreSessionsHandler;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/global/NoMoreSessionsHandler;->INSTANCE:Lorg/apache/sshd/server/global/NoMoreSessionsHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p1, Lorg/apache/sshd/common/session/ConnectionService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/server/global/NoMoreSessionsHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 1
    .param p1, "connectionService"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    const-string v0, "no-more-sessions@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/session/ConnectionService;->setAllowMoreSessions(Z)V

    .line 44
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0
.end method
