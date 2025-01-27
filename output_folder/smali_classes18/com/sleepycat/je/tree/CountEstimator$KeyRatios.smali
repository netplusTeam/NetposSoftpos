.class Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;
.super Ljava/lang/Object;
.source "CountEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/CountEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyRatios"
.end annotation


# instance fields
.field final equal:D

.field final greater:D

.field final less:D


# direct methods
.method constructor <init>(DDD)V
    .locals 0
    .param p1, "less"    # D
    .param p3, "equal"    # D
    .param p5, "greater"    # D

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-wide p1, p0, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;->less:D

    .line 300
    iput-wide p3, p0, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;->equal:D

    .line 301
    iput-wide p5, p0, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;->greater:D

    .line 302
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "less: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;->less:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " equal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;->equal:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " greater: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;->greater:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
