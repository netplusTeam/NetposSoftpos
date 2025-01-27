.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;->f$1:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;->f$1:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$callMechanismFuture$4$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
