.class public final synthetic Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onConnected(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;)V
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->$r8$lambda$Vri00m9-BPB3SF5OuVU6tkmJukg(Landroid/content/Context;Ljava/lang/String;Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;)V

    return-void
.end method
