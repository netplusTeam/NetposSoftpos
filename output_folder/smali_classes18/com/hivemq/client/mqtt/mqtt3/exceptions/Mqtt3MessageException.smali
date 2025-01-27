.class public abstract Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
.super Lcom/hivemq/client/internal/util/AsyncRuntimeException;
.source "Mqtt3MessageException.java"


# direct methods
.method constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;)V
    .locals 0
    .param p1, "e"    # Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;

    .line 36
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;
.end method
