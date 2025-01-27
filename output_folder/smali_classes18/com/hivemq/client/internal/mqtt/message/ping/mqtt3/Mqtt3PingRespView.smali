.class public Lcom/hivemq/client/internal/mqtt/message/ping/mqtt3/Mqtt3PingRespView;
.super Ljava/lang/Object;
.source "Mqtt3PingRespView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/ping/Mqtt3PingResp;


# static fields
.field public static final INSTANCE:Lcom/hivemq/client/internal/mqtt/message/ping/mqtt3/Mqtt3PingRespView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/ping/mqtt3/Mqtt3PingRespView;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/ping/mqtt3/Mqtt3PingRespView;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/ping/mqtt3/Mqtt3PingRespView;->INSTANCE:Lcom/hivemq/client/internal/mqtt/message/ping/mqtt3/Mqtt3PingRespView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 47
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGRESP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "MqttPingResp{}"

    return-object v0
.end method
