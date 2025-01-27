.class public Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
.super Ljava/lang/Object;
.source "MqttConnAckFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;
    }
.end annotation


# instance fields
.field private final attempts:I

.field private final disposable:Lio/reactivex/disposables/Disposable;

.field private done:Z

.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V
    .locals 2
    .param p1, "oldFlow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    .line 45
    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;

    invoke-direct {v1, v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;-><init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$1;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    .line 49
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    .line 50
    iget v0, p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    .line 52
    :goto_0
    return-void
.end method

.method constructor <init>(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    .line 37
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$MqttConnAckDisposable;-><init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow$1;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    .line 39
    return-void
.end method


# virtual methods
.method getAttempts()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->attempts:I

    return v0
.end method

.method getDisposable()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->disposable:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 69
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 72
    :cond_0
    return-void
.end method

.method onSuccess(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)V
    .locals 1
    .param p1, "connAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;

    .line 63
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->observer:Lio/reactivex/SingleObserver;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method

.method setDone()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->done:Z

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->done:Z

    .line 59
    return v0
.end method
