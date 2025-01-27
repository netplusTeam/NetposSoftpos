.class public final synthetic Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->$r8$lambda$s8IerX0j41dEmCzahfYSwG1PUcE(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;)V

    return-void
.end method
