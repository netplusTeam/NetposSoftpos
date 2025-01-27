.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
.super Ljava/lang/Object;
.source "Mqtt5UnsubscribeBuilderBase.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public abstract userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested<",
            "+TC;>;"
        }
    .end annotation
.end method

.method public abstract userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;",
            ")TC;"
        }
    .end annotation
.end method
