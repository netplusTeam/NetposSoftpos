.class public abstract Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.super Lcom/hivemq/client/internal/util/AsyncRuntimeException;
.source "Mqtt5MessageException.java"


# direct methods
.method constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V
    .locals 0
    .param p1, "e"    # Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;

    .line 38
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
.end method
