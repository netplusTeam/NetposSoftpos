.class final enum Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$5;
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

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;-><init>(Ljava/lang/String;ILcom/sleepycat/je/utilint/PropUtil$1;)V

    return-void
.end method


# virtual methods
.method toNanos(J)J
    .locals 2
    .param p1, "val"    # J

    .line 207
    const-wide v0, 0xdf8475800L

    mul-long/2addr v0, p1

    return-wide v0
.end method
