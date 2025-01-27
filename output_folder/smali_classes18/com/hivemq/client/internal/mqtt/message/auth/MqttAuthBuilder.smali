.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
.super Ljava/lang/Object;
.source "MqttAuthBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private final method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V
    .locals 1
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    .param p2, "method"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 45
    const-string v0, "Reason code"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    const-string v0, "Method"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    .line 48
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 49
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .locals 7

    .line 87
    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v6
.end method

.method public data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 59
    const-string v0, "Auth data"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data:Ljava/nio/ByteBuffer;

    .line 60
    return-object p0
.end method

.method public data([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
    .locals 1
    .param p1, "data"    # [B

    .line 53
    const-string v0, "Auth data"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data:Ljava/nio/ByteBuffer;

    .line 54
    return-object p0
.end method

.method public bridge synthetic data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic data([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic data([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
    .locals 1
    .param p1, "reasonString"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    .line 71
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 72
    return-object p0
.end method

.method public reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
    .locals 1
    .param p1, "reasonString"    # Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 66
    return-object p0
.end method

.method public bridge synthetic reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
    .locals 1
    .param p1, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;

    .line 77
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 78
    return-object p0
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    move-result-object p1

    return-object p1
.end method
