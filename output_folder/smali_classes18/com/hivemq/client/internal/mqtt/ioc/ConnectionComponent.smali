.class public interface abstract Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;
.super Ljava/lang/Object;
.source "ConnectionComponent.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule;,
        Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract bootstrap()Lio/netty/bootstrap/Bootstrap;
.end method
