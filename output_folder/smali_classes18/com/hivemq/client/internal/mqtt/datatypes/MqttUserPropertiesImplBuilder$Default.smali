.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
.source "MqttUserPropertiesImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .param p1, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 97
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 98
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->add(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;

    return-object p1
.end method

.method public bridge synthetic add(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->add(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->addAll(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addAll([Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->addAll([Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;
    .locals 0

    .line 102
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method
