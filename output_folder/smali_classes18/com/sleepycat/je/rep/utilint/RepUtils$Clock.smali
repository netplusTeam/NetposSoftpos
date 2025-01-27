.class public Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
.super Ljava/lang/Object;
.source "RepUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/RepUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation


# instance fields
.field private final skewMs:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "skewMs"    # I

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput p1, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;->skewMs:I

    .line 624
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;->skewMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
