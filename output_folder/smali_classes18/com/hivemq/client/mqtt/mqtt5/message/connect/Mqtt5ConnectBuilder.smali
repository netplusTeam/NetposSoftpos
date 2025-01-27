.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder;
.super Ljava/lang/Object;
.source "Mqtt5ConnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Send;,
        Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Nested;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
.end method
