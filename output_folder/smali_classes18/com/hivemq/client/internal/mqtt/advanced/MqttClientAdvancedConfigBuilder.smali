.class public abstract Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
.super Ljava/lang/Object;
.source "MqttClientAdvancedConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private allowServerReAuth:Z

.field private interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

.field private validatePayloadFormat:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;)V
    .locals 1
    .param p1, "advancedConfig"    # Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    .line 40
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->isAllowServerReAuth()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->allowServerReAuth:Z

    .line 42
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->isValidatePayloadFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->validatePayloadFormat:Z

    .line 43
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 44
    return-void
.end method


# virtual methods
.method public allowServerReAuth(Z)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
    .locals 1
    .param p1, "allowServerReAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->allowServerReAuth:Z

    .line 50
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
    .locals 4

    .line 68
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->allowServerReAuth:Z

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->validatePayloadFormat:Z

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    invoke-direct {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;-><init>(ZZLcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V

    return-object v0
.end method

.method public interceptors(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
    .locals 2
    .param p1, "interceptors"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;",
            ")TB;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    const-string v1, "Interceptors"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 60
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public interceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;Ljava/util/function/Function;)V

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public validatePayloadFormat(Z)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
    .locals 1
    .param p1, "validatePayloadFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->validatePayloadFormat:Z

    .line 55
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object v0

    return-object v0
.end method
