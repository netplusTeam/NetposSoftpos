.class final Lcom/google/common/util/concurrent/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toNanosSaturated(Ljava/time/Duration;)J
    .locals 3
    .param p0, "duration"    # Ljava/time/Duration;

    .line 36
    :try_start_0
    invoke-virtual {p0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "tooBig":Ljava/lang/ArithmeticException;
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method
