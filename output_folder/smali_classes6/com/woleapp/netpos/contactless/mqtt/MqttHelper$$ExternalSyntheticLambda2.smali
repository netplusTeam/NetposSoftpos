.class public final synthetic Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/model/MqttEvent;

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public final synthetic f$2:Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/model/MqttEvent;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;->f$1:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;->f$2:Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/model/MqttEvent;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;->f$1:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;->f$2:Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->$r8$lambda$b6tvKrHzT6wmhWuc4ec9cW031yU(Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;Ljava/lang/Throwable;)V

    return-void
.end method
