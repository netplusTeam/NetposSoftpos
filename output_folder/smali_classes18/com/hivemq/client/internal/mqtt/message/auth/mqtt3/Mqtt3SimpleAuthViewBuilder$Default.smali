.class public Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;
.source "Mqtt3SimpleAuthViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic password(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;->password(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic password([B)Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;->password([B)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Default;
    .locals 0

    .line 69
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic username(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;->username(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;->username(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;

    return-object p1
.end method
