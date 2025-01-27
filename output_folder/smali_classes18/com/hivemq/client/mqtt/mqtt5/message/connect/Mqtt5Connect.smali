.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
.super Ljava/lang/Object;
.source "Mqtt5Connect.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;


# static fields
.field public static final DEFAULT_CLEAN_START:Z = true

.field public static final DEFAULT_KEEP_ALIVE:I = 0x3c

.field public static final DEFAULT_SESSION_EXPIRY_INTERVAL:J = 0x0L

.field public static final NO_KEEP_ALIVE:I = 0x0

.field public static final NO_SESSION_EXPIRY:J = 0xffffffffL


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder;
    .locals 1

    .line 68
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder;
.end method

.method public abstract getEnhancedAuthMechanism()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeepAlive()I
.end method

.method public abstract getRestrictions()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;
.end method

.method public abstract getSessionExpiryInterval()J
.end method

.method public abstract getSimpleAuth()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 114
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    return-object v0
.end method

.method public abstract getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
.end method

.method public abstract getWillPublish()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCleanStart()Z
.end method
