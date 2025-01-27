.class abstract Lorg/jctools/queues/SpscArrayQueueColdField;
.super Lorg/jctools/queues/ConcurrentCircularArrayQueue;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/ConcurrentCircularArrayQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field protected final lookAheadStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/jctools/queues/SpscArrayQueueColdField;->MAX_LOOK_AHEAD_STEP:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 28
    .local p0, "this":Lorg/jctools/queues/SpscArrayQueueColdField;, "Lorg/jctools/queues/SpscArrayQueueColdField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/ConcurrentCircularArrayQueue;-><init>(I)V

    .line 29
    invoke-virtual {p0}, Lorg/jctools/queues/SpscArrayQueueColdField;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sget v1, Lorg/jctools/queues/SpscArrayQueueColdField;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jctools/queues/SpscArrayQueueColdField;->lookAheadStep:I

    .line 30
    return-void
.end method
