.class public Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;
.super Ljava/lang/Object;
.source "Mqtt3SimpleAuthView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)V
    .locals 0
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 57
    return-void
.end method

.method private static delegate(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    .locals 1
    .param p0, "username"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p1, "password"    # Ljava/nio/ByteBuffer;

    .line 40
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;
    .locals 2
    .param p0, "username"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p1, "password"    # Ljava/nio/ByteBuffer;

    .line 46
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)V

    return-object v0
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;
    .locals 1
    .param p0, "delegate"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 50
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    .line 88
    .local v0, "that":Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDelegate()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    return-object v0
.end method

.method public getPassword()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getPassword()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    const-string v1, "Username"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->stateNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->delegate:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
