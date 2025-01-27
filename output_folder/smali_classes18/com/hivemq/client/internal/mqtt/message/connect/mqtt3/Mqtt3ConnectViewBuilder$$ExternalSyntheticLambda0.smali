.class public final synthetic Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object p1

    return-object p1
.end method
