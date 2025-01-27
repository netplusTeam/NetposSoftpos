.class public Lorg/apache/sshd/client/channel/exit/ExitStatusChannelRequestHandler;
.super Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;
.source "ExitStatusChannelRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "exit-status"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/apache/sshd/common/util/EventNotifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/sshd/common/util/EventNotifier<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Integer;>;"
    .local p2, "notifier":Lorg/apache/sshd/common/util/EventNotifier;, "Lorg/apache/sshd/common/util/EventNotifier<-Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/apache/sshd/common/util/EventNotifier;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "exit-status"

    return-object v0
.end method

.method protected processRequestValue(Lorg/apache/sshd/common/channel/Channel;I)Ljava/lang/Integer;
    .locals 3
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "exitStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/client/channel/exit/ExitStatusChannelRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/client/channel/exit/ExitStatusChannelRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "processRequestValue({}) status={}"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/client/channel/exit/ExitStatusChannelRequestHandler;->processRequestValue(Lorg/apache/sshd/common/channel/Channel;I)Ljava/lang/Integer;

    move-result-object v0

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/channel/exit/ExitStatusChannelRequestHandler;->processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
