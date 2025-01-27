.class public Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;
.super Lcom/hivemq/client/internal/util/AsyncRuntimeException;
.source "ConnectionClosedException.java"


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;)V
    .locals 0
    .param p1, "e"    # Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    .line 39
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 35
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;->copy()Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    move-result-object v0

    return-object v0
.end method

.method protected copy()Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;
    .locals 1

    .line 44
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;)V

    return-object v0
.end method
