.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;
.super Ljava/lang/Object;
.source "MqttClientExecutorConfig.java"


# static fields
.field public static final DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;->DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;

    return-void
.end method

.method public static builder()Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder;
    .locals 1

    .line 46
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder;
.end method

.method public abstract getApplicationScheduler()Lio/reactivex/Scheduler;
.end method

.method public abstract getNettyExecutor()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNettyThreads()Ljava/util/OptionalInt;
.end method
