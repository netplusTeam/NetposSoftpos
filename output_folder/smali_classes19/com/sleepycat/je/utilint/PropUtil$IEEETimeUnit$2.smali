.class final enum Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$2;
.super Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;
.source "PropUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;-><init>(Ljava/lang/String;ILcom/sleepycat/je/utilint/PropUtil$1;)V

    return-void
.end method


# virtual methods
.method toNanos(J)J
    .locals 2
    .param p1, "val"    # J

    .line 186
    invoke-static {}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->access$100()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
