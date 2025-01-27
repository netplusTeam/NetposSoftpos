.class public interface abstract Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;
.super Ljava/lang/Object;
.source "MqttClientIdentifier.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# direct methods
.method public static of(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract mustBeAllowedByServer()Z
.end method
