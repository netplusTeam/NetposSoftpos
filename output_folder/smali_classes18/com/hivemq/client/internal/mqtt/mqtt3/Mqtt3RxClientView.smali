.class public Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;
.super Ljava/lang/Object;
.source "Mqtt3RxClientView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;
    }
.end annotation


# static fields
.field private static final EXCEPTION_MAPPER_COMPLETABLE:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCEPTION_MAPPER_FLOWABLE_PUBLISH:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EXCEPTION_MAPPER_FLOWABLE_PUBLISH_RESULT:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EXCEPTION_MAPPER_SINGLE_CONNACK:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EXCEPTION_MAPPER_SINGLE_SUBACK:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PUBLISH_MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->PUBLISH_MAPPER:Lio/reactivex/functions/Function;

    .line 65
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_COMPLETABLE:Lio/reactivex/functions/Function;

    .line 68
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_SINGLE_CONNACK:Lio/reactivex/functions/Function;

    .line 71
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_SINGLE_SUBACK:Lio/reactivex/functions/Function;

    .line 74
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_FLOWABLE_PUBLISH:Lio/reactivex/functions/Function;

    .line 78
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_FLOWABLE_PUBLISH_RESULT:Lio/reactivex/functions/Function;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V
    .locals 2
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    .line 85
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->getConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    .line 86
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Throwable;)Lio/reactivex/Completable;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$1(Ljava/lang/Throwable;)Lio/reactivex/Single;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$2(Ljava/lang/Throwable;)Lio/reactivex/Single;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$3(Ljava/lang/Throwable;)Lio/reactivex/Flowable;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Flowable;->error(Ljava/lang/Throwable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$4(Ljava/lang/Throwable;)Lio/reactivex/Flowable;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Flowable;->error(Ljava/lang/Throwable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connect()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lio/reactivex/Single;
    .locals 3
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    .line 97
    .local v0, "mqttConnect":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_SINGLE_CONNACK:Lio/reactivex/functions/Function;

    .line 98
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->MAPPER:Lio/reactivex/functions/Function;

    .line 99
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 97
    return-object v1
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested<",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda9;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Nested;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lio/reactivex/Completable;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;->DELEGATE:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_COMPLETABLE:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->getConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->getConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    move-result-object v0

    return-object v0
.end method

.method public publish(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;",
            ">;"
        }
    .end annotation

    .line 186
    .local p1, "publishFlowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const-string v0, "Publish flowable"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->PUBLISH_MAPPER:Lio/reactivex/functions/Function;

    invoke-virtual {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publish(Lio/reactivex/Flowable;Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_FLOWABLE_PUBLISH_RESULT:Lio/reactivex/functions/Function;

    .line 189
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->MAPPER:Lio/reactivex/functions/Function;

    .line 190
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lio/reactivex/Flowable;
    .locals 1
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;
    .locals 2
    .param p1, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p2, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Z)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation

    .line 165
    const-string v0, "Global publish filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_FLOWABLE_PUBLISH:Lio/reactivex/functions/Function;

    .line 168
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->MAPPER:Lio/reactivex/functions/Function;

    .line 169
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lio/reactivex/Single;
    .locals 3
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 111
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_SINGLE_SUBACK:Lio/reactivex/functions/Function;

    .line 112
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->MAPPER:Lio/reactivex/functions/Function;

    .line 113
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 111
    return-object v1
.end method

.method public subscribePublishes(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->subscribePublishes(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public subscribePublishes(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 4
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .param p2, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            "Z)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 146
    .local v0, "mqttSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishes(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->MAPPER:Lio/reactivex/functions/Function;

    .line 147
    invoke-virtual {v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->mapError(Lio/reactivex/functions/Function;)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->MAPPER:Lio/reactivex/functions/Function;

    sget-object v3, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->MAPPER:Lio/reactivex/functions/Function;

    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/hivemq/client/rx/FlowableWithSingle;->mapBoth(Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v1

    .line 146
    return-object v1
.end method

.method public subscribePublishesWith()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;
    .locals 2

    .line 153
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$1;)V

    return-object v0
.end method

.method public bridge synthetic subscribePublishesWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Publishes$Start;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->subscribePublishesWith()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public subscribeStream(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->subscribePublishes(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public subscribeStreamWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested<",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic subscribeStreamWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Nested$Start;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->subscribeStreamWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested<",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic subscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Nested$Start;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->subscribeWith()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public toAsync()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;
    .locals 2

    .line 205
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    return-object v0
.end method

.method public bridge synthetic toAsync()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->toAsync()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    move-result-object v0

    return-object v0
.end method

.method public toBlocking()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;
    .locals 2

    .line 210
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    return-object v0
.end method

.method public bridge synthetic toBlocking()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->toBlocking()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Lio/reactivex/Completable;
    .locals 3
    .param p1, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;

    .line 174
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    .line 176
    .local v0, "mqttUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Single;->ignoreElement()Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->EXCEPTION_MAPPER_COMPLETABLE:Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v1

    return-object v1
.end method

.method public unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Nested$Start;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->unsubscribeWith()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method
