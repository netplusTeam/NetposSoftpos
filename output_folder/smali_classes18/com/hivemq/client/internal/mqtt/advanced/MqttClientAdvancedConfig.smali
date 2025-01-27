.class public Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
.super Ljava/lang/Object;
.source "MqttClientAdvancedConfig.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;


# instance fields
.field private final allowServerReAuth:Z

.field private final interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

.field private final validatePayloadFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;-><init>(ZZLcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    return-void
.end method

.method constructor <init>(ZZLcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V
    .locals 0
    .param p1, "allowServerReAuth"    # Z
    .param p2, "validatePayloadFormat"    # Z
    .param p3, "interceptors"    # Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    .line 43
    iput-boolean p2, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    .line 44
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 70
    return v0

    .line 72
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 73
    return v2

    .line 75
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    .line 77
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 78
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 77
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;
    .locals 1

    .line 64
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->extend()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    return-object v0
.end method

.method public bridge synthetic getInterceptors()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    .line 84
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->interceptors:Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isAllowServerReAuth()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    return v0
.end method

.method public isValidatePayloadFormat()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    return v0
.end method
