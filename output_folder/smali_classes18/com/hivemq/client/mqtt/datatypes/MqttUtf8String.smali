.class public interface abstract Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.super Ljava/lang/Object;
.source "MqttUtf8String.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
        ">;"
    }
.end annotation


# direct methods
.method public static of(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract containsShouldNotCharacters()Z
.end method

.method public abstract toByteBuffer()Ljava/nio/ByteBuffer;
.end method
