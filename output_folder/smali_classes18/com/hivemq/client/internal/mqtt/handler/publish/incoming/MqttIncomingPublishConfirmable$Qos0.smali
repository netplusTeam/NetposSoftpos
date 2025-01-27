.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;
.super Ljava/lang/Object;
.source "MqttIncomingPublishConfirmable.java"

# interfaces
.implements Lcom/hivemq/client/internal/checkpoint/Confirmable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Qos0"
.end annotation


# instance fields
.field private final confirmed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;->confirmed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public confirm()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;->confirmed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method
