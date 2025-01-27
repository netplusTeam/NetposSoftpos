.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda9;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda9;->f$1:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda9;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda9;->f$1:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$writeReAuth$1$com-hivemq-client-internal-mqtt-handler-auth-MqttReAuthHandler(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method
