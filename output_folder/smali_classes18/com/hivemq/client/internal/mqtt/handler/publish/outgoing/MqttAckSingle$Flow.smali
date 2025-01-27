.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
.source "MqttAckSingle.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flow"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

.field private result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle;

    return-void
.end method

.method constructor <init>(Lio/reactivex/SingleObserver;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V
    .locals 0
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "outgoingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ")V"
        }
    .end annotation

    .line 74
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;>;"
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 75
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->observer:Lio/reactivex/SingleObserver;

    .line 76
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    .line 77
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->init()Z

    .line 78
    return-void
.end method

.method private done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 3
    .param p1, "result"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 101
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->getRawError()Ljava/lang/Throwable;

    move-result-object v0

    .line 103
    .local v0, "error":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 109
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->request(J)V

    .line 110
    return-void
.end method


# virtual methods
.method acknowledged(J)V
    .locals 3
    .param p1, "acknowledged"    # J

    .line 93
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 94
    .local v0, "result":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
    const-wide/16 v1, 0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 96
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    .line 97
    return-void

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "a single publish must be acknowledged exactly once"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 1
    .param p1, "result"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 83
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->acknowledged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->done(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    goto :goto_0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckSingle$Flow;->result:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 88
    :goto_0
    return-void
.end method
