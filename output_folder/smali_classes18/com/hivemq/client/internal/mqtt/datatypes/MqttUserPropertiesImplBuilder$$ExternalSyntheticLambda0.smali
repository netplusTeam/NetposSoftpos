.class public final synthetic Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;->add(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder;

    return-void
.end method
