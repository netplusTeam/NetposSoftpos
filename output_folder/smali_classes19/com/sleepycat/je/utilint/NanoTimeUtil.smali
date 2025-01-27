.class public Lcom/sleepycat/je/utilint/NanoTimeUtil;
.super Ljava/lang/Object;
.source "NanoTimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)J
    .locals 2
    .param p0, "t1"    # J
    .param p2, "t2"    # J

    .line 32
    sub-long v0, p0, p2

    return-wide v0
.end method
