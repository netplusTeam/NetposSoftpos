.class Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
.super Ljava/lang/Object;
.source "MqttBlockingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# static fields
.field static final CANCELLED:Ljava/lang/Object;


# instance fields
.field final latch:Ljava/util/concurrent/CountDownLatch;

.field final result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->CANCELLED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 412
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$1;

    .line 407
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;-><init>()V

    return-void
.end method
