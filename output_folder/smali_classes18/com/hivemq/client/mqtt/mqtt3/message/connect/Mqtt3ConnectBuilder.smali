.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder;
.super Ljava/lang/Object;
.source "Mqtt3ConnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Send;,
        Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Nested;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase<",
        "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
.end method
