.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.source "Mqtt5MessageWithUserPropertiesEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WithReason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason$WithOmissibleCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder<",
        "TM;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;-><init>()V

    return-void
.end method

.method private reasonStringLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    .local p1, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;, "TM;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getRawReasonString()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;Lio/netty/buffer/ByteBuf;I)V
    .locals 2
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "omittedProperties"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            "I)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    .local p1, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;, "TM;"
    if-nez p3, :cond_0

    .line 216
    const/16 v0, 0x1f

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getRawReasonString()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 218
    :cond_0
    const/4 v0, 0x1

    if-gt p3, v0, :cond_1

    .line 219
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 221
    :cond_1
    return-void
.end method

.method bridge synthetic omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result p1

    return p1
.end method

.method final omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    .local p1, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;, "TM;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->reasonStringLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I
    .locals 0

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;II)I

    move-result p1

    return p1
.end method

.method propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;II)I
    .locals 1
    .param p2, "propertyLength"    # I
    .param p3, "omittedProperties"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;II)I"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<TM;>;"
    .local p1, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;, "TM;"
    packed-switch p3, :pswitch_data_0

    .line 202
    const/4 v0, -0x1

    return v0

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result v0

    sub-int v0, p2, v0

    return v0

    .line 198
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->reasonStringLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result v0

    sub-int v0, p2, v0

    return v0

    .line 196
    :pswitch_2
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
