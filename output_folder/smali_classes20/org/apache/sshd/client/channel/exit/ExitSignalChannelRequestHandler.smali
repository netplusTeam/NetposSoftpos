.class public Lorg/apache/sshd/client/channel/exit/ExitSignalChannelRequestHandler;
.super Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;
.source "ExitSignalChannelRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "exit-signal"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/apache/sshd/common/util/EventNotifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/sshd/common/util/EventNotifier<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .local p2, "notifier":Lorg/apache/sshd/common/util/EventNotifier;, "Lorg/apache/sshd/common/util/EventNotifier<-Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/apache/sshd/common/util/EventNotifier;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "exit-signal"

    return-object v0
.end method

.method protected bridge synthetic processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/channel/exit/ExitSignalChannelRequestHandler;->processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;
    .locals 6
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v3

    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/client/channel/exit/ExitSignalChannelRequestHandler;->processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "signalName"    # Ljava/lang/String;
    .param p3, "coreDumped"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/client/channel/exit/ExitSignalChannelRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/client/channel/exit/ExitSignalChannelRequestHandler;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    .line 51
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    .line 50
    const-string v2, "processRequestValue({}) signal={}, core={}, error={}, lang={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-object p2
.end method
