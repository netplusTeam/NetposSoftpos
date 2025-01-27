.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder;
.super Ljava/lang/Object;
.source "Mqtt5DisconnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$SendVoid;,
        Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Send;,
        Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Nested;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;
.end method
