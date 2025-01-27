.class public Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;
.super Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;
.source "SizeAndTimeBasedRollingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/rolling/TimeBasedRollingPolicy<",
        "TE;>;"
    }
.end annotation


# instance fields
.field maxFileSize:Lch/qos/logback/core/util/FileSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public setMaxFileSize(Lch/qos/logback/core/util/FileSize;)V
    .locals 0
    .param p1, "aMaxFileSize"    # Lch/qos/logback/core/util/FileSize;

    .line 36
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    .line 37
    return-void
.end method

.method public start()V
    .locals 5

    .line 14
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy<TE;>;"
    new-instance v0, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;

    sget-object v1, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;->EMBEDDED:Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;

    invoke-direct {v0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;-><init>(Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP$Usage;)V

    .line 15
    .local v0, "sizeAndTimeBasedFNATP":Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP<TE;>;"
    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    if-nez v1, :cond_0

    .line 16
    const-string v1, "maxFileSize property is mandatory."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->addError(Ljava/lang/String;)V

    .line 17
    return-void

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archive files will be limited to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] each."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->addInfo(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedFNATP;->setMaxFileSize(Lch/qos/logback/core/util/FileSize;)V

    .line 23
    iput-object v0, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->timeBasedFileNamingAndTriggeringPolicy:Lch/qos/logback/core/rolling/TimeBasedFileNamingAndTriggeringPolicy;

    .line 25
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->isUnboundedTotalSizeCap()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->totalSizeCap:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v1}, Lch/qos/logback/core/util/FileSize;->getSize()J

    move-result-wide v1

    iget-object v3, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v3}, Lch/qos/logback/core/util/FileSize;->getSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalSizeCap of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->totalSizeCap:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is smaller than maxFileSize ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] which is non-sensical"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;->addError(Ljava/lang/String;)V

    .line 27
    return-void

    .line 31
    :cond_1
    invoke-super {p0}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->start()V

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    .local p0, "this":Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy;, "Lch/qos/logback/core/rolling/SizeAndTimeBasedRollingPolicy<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c.q.l.core.rolling.SizeAndTimeBasedRollingPolicy@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
