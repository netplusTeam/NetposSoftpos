.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
.super Ljava/lang/Object;
.source "MqttSimpleAuth.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;


# instance fields
.field private final password:Ljava/nio/ByteBuffer;

.field private final username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "username"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p2, "password"    # Ljava/nio/ByteBuffer;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 42
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    .line 43
    return-void
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "password"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const-string/jumbo v0, "username"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "username and password"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 76
    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 79
    return v2

    .line 81
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 83
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
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

    .line 56
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->optionalReadOnly(Ljava/nio/ByteBuffer;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRawPassword()Ljava/nio/ByteBuffer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public getUsername()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->username:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->password:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 90
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttSimpleAuth{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
