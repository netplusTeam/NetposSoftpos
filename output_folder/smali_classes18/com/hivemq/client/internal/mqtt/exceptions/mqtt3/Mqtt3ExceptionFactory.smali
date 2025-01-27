.class public final Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;
.super Ljava/lang/Object;
.source "Mqtt3ExceptionFactory.java"


# static fields
.field public static final MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAPPER_JAVA:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->MAPPER:Lio/reactivex/functions/Function;

    .line 37
    new-instance v0, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->MAPPER_JAVA:Ljava/util/function/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static map(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
    .locals 5
    .param p0, "mqtt5MessageException"    # Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    .line 69
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;

    move-result-object v0

    .line 70
    .local v0, "mqttMessage":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 72
    .local v2, "cause":Ljava/lang/Throwable;
    sget-object v3, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt5$message$Mqtt5MessageType:[I

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 86
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 84
    :pswitch_0
    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;

    invoke-direct {v3, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 82
    :pswitch_1
    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;

    move-object v4, v0

    check-cast v4, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->of(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 80
    :pswitch_2
    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubRecException;

    invoke-direct {v3, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubRecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 78
    :pswitch_3
    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;

    invoke-direct {v3, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3PubAckException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 76
    :pswitch_4
    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3DisconnectException;

    invoke-direct {v3, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3DisconnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 74
    :pswitch_5
    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;

    move-object v4, v0

    check-cast v4, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->of(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static map(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 4
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 48
    instance-of v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    instance-of v0, p0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 53
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    if-eqz v1, :cond_1

    .line 54
    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    invoke-static {v3}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 57
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    return-object p0
.end method

.method public static map(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 41
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    return-object p0
.end method

.method public static mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 61
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 62
    .local v0, "mapped":Ljava/lang/RuntimeException;
    if-eq v0, p0, :cond_0

    .line 63
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 65
    :cond_0
    return-object v0
.end method
