.class public Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;
.super Ljava/lang/Object;
.source "Mqtt3DisconnectView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/disconnect/Mqtt3Disconnect;


# static fields
.field public static final DELEGATE:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

.field public static final INSTANCE:Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NORMAL_DISCONNECTION:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    sget-object v6, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    sput-object v7, Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;->DELEGATE:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 38
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;->INSTANCE:Lcom/hivemq/client/internal/mqtt/message/disconnect/mqtt3/Mqtt3DisconnectView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 49
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

    .line 54
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "MqttDisconnect{}"

    return-object v0
.end method
