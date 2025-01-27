.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5ClientAdvancedConfigBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract allowServerReAuth(Z)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation
.end method

.method public abstract interceptors(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract interceptors()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract validatePayloadFormat(Z)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation
.end method
