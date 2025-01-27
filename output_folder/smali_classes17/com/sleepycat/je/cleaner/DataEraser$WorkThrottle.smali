.class Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;
.super Ljava/lang/Object;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkThrottle"
.end annotation


# instance fields
.field private final msPerUnitOfWork:F

.field private final startTime:J

.field final synthetic this$0:Lcom/sleepycat/je/cleaner/DataEraser;

.field private workDone:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser;JJ)V
    .locals 2
    .param p2, "totalWork"    # J
    .param p4, "durationMs"    # J

    .line 1874
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1876
    long-to-float p1, p4

    long-to-float v0, p2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->msPerUnitOfWork:F

    .line 1877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->startTime:J

    .line 1878
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->workDone:J

    .line 1879
    return-void
.end method


# virtual methods
.method synthetic lambda$throttle$0$com-sleepycat-je-cleaner-DataEraser$WorkThrottle()Ljava/lang/Boolean;
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/DataEraser;->access$400(Lcom/sleepycat/je/cleaner/DataEraser;)V

    .line 1907
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method throttle(J)V
    .locals 12
    .param p1, "addWork"    # J

    .line 1893
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->workDone:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->workDone:J

    .line 1895
    long-to-float v0, v0

    iget v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->msPerUnitOfWork:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1897
    .local v0, "workDoneMs":J
    nop

    .line 1898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->startTime:J

    sub-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 1900
    .local v2, "delayMs":J
    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 1902
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/DataEraser;->access$600(Lcom/sleepycat/je/cleaner/DataEraser;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1904
    .local v10, "checkMs":J
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/DataEraser;->access$700(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;)V

    move-wide v4, v10

    move-wide v6, v2

    invoke-static/range {v4 .. v9}, Lcom/sleepycat/je/utilint/PollCondition;->await(JJLjava/lang/Object;Ljava/util/function/Supplier;)Z

    .line 1910
    .end local v10    # "checkMs":J
    :cond_0
    return-void
.end method
