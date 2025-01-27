.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;
.super Ljava/lang/Object;
.source "MqttClientAutoReconnectImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

.field static final DEFAULT_MAX_DELAY_NANOS:J

.field static final DEFAULT_START_DELAY_NANOS:J


# instance fields
.field private final initialDelayNanos:J

.field private final maxDelayNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT_START_DELAY_NANOS:J

    .line 35
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x78

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sput-wide v2, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT_MAX_DELAY_NANOS:J

    .line 36
    new-instance v4, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;-><init>(JJ)V

    sput-object v4, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0
    .param p1, "initialDelayNanos"    # J
    .param p3, "maxDelayNanos"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->initialDelayNanos:J

    .line 44
    iput-wide p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->maxDelayNanos:J

    .line 45
    return-void
.end method


# virtual methods
.method public extend()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;
    .locals 1

    .line 70
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->extend()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getInitialDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 60
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->initialDelayNanos:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 65
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->maxDelayNanos:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onDisconnected(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;)V
    .locals 9
    .param p1, "context"    # Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;

    .line 49
    invoke-interface {p1}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;->getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->USER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    if-eq v0, v1, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;->getReconnector()Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;

    move-result-object v0

    .line 51
    .local v0, "reconnector":Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->initialDelayNanos:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 52
    invoke-interface {v0}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;->getAttempts()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->maxDelayNanos:J

    long-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-long v1, v1

    .line 53
    .local v1, "delay":J
    long-to-double v3, v1

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v5

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v3, v5

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    .line 54
    .local v3, "randomDelay":J
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;->reconnect(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;

    move-result-object v5

    add-long v6, v1, v3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;->delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;

    .line 56
    .end local v0    # "reconnector":Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .end local v1    # "delay":J
    .end local v3    # "randomDelay":J
    :cond_0
    return-void
.end method
