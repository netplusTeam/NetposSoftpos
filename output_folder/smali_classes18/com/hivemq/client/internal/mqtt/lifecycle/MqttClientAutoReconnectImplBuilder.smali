.class public abstract Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
.super Ljava/lang/Object;
.source "MqttClientAutoReconnectImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private initialDelayNanos:J

.field private maxDelayNanos:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 35
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-wide v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT_START_DELAY_NANOS:J

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->initialDelayNanos:J

    .line 33
    sget-wide v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT_MAX_DELAY_NANOS:J

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->maxDelayNanos:J

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;)V
    .locals 2
    .param p1, "autoReconnect"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    .line 37
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-wide v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT_START_DELAY_NANOS:J

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->initialDelayNanos:J

    .line 33
    sget-wide v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT_MAX_DELAY_NANOS:J

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->maxDelayNanos:J

    .line 38
    if-eqz p1, :cond_0

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->getInitialDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->initialDelayNanos:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->getMaxDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->maxDelayNanos:J

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;
    .locals 5

    .line 65
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->initialDelayNanos:J

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->maxDelayNanos:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;-><init>(JJ)V

    return-object v0
.end method

.method public initialDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
    .locals 2
    .param p1, "initialDelay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<TB;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 50
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->initialDelayNanos:J

    .line 52
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial delay must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
    .locals 2
    .param p1, "maxDelay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<TB;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 59
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->maxDelayNanos:J

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum delay must be positive or zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
