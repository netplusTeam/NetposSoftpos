.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
.super Ljava/lang/Object;
.source "MqttUserPropertyImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;


# instance fields
.field private final name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V
    .locals 0
    .param p1, "name"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p2, "value"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 83
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 84
    return-void
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;

    .line 67
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    .line 68
    .local v0, "name":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    return-object v1

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    .line 72
    .local v2, "value":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    if-nez v2, :cond_1

    .line 73
    return-object v1

    .line 75
    :cond_1
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    invoke-direct {v1, v0, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    return-object v1
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
    .locals 1
    .param p0, "name"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p1, "value"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 57
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 43
    nop

    .line 44
    const-string v0, "User property name"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    const-string v1, "User property value"

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)I
    .locals 3
    .param p1, "that"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;

    .line 125
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;->getName()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I

    move-result v0

    .line 126
    .local v0, "nameComparison":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;->getValue()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->compareTo(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)I

    move-result p1

    return p1
.end method

.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 97
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 98
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 99
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 100
    return-void
.end method

.method encodedLength()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 112
    return v2

    .line 114
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    .line 115
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getName()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public bridge synthetic getName()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->getName()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public bridge synthetic getValue()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->getValue()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->name:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->value:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
