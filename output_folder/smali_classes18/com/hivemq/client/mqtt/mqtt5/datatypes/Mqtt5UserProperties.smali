.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
.super Ljava/lang/Object;
.source "Mqtt5UserProperties.java"


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder;
    .locals 1

    .line 71
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;-><init>()V

    return-object v0
.end method

.method public static of()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1

    .line 42
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-object v0
.end method

.method public static of(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ">;)",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;"
        }
    .end annotation

    .line 62
    .local p0, "userProperties":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;>;"
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1
    .param p0, "userProperties"    # [Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;

    .line 52
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties([Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder;
.end method
