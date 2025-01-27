.class public interface abstract Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;
.super Ljava/lang/Object;
.source "ClientComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
.end method

.method public abstract clientConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method
