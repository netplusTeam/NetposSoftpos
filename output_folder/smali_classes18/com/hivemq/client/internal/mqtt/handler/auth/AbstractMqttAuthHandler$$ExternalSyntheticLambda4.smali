.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic f$1:Ljava/lang/Throwable;

.field public final synthetic f$2:Ljava/util/function/BiConsumer;

.field public final synthetic f$3:Ljava/lang/Boolean;

.field public final synthetic f$4:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$4:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;->f$4:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->lambda$null$5$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;Ljava/util/function/Consumer;)V

    return-void
.end method
