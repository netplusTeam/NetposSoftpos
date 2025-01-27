.class interface abstract Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;
.super Ljava/lang/Object;
.source "MqttPublishFlowableAckLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LinkedFlow"
.end annotation


# static fields
.field public static final CANCELLED:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;->CANCELLED:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;

    return-void
.end method

.method public static synthetic lambda$static$0()V
    .locals 0

    .line 54
    return-void
.end method


# virtual methods
.method public abstract cancelLink()V
.end method
