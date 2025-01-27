.class public Lorg/jpos/util/Profiler$Entry;
.super Ljava/lang/Object;
.source "Profiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/Profiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field duration:J

.field eventName:Ljava/lang/String;

.field totalDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/util/Profiler$Entry;->eventName:Ljava/lang/String;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/util/Profiler$Entry;->duration:J

    .line 118
    iput-wide v0, p0, Lorg/jpos/util/Profiler$Entry;->totalDuration:J

    .line 119
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    .line 130
    iget-wide v0, p0, Lorg/jpos/util/Profiler$Entry;->duration:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationInNanos()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/jpos/util/Profiler$Entry;->duration:J

    return-wide v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jpos/util/Profiler$Entry;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDuration()J
    .locals 4

    .line 139
    iget-wide v0, p0, Lorg/jpos/util/Profiler$Entry;->totalDuration:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalDurationInNanos()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lorg/jpos/util/Profiler$Entry;->totalDuration:J

    return-wide v0
.end method

.method public setDurationInNanos(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 127
    iput-wide p1, p0, Lorg/jpos/util/Profiler$Entry;->duration:J

    .line 128
    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "myEvent"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lorg/jpos/util/Profiler$Entry;->eventName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTotalDurationInNanos(J)V
    .locals 0
    .param p1, "totalDuration"    # J

    .line 136
    iput-wide p1, p0, Lorg/jpos/util/Profiler$Entry;->totalDuration:J

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jpos/util/Profiler$Entry;->eventName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lorg/jpos/util/Profiler$Entry;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-wide v2, p0, Lorg/jpos/util/Profiler$Entry;->duration:J

    const-wide/32 v4, 0xf4240

    rem-long/2addr v2, v4

    const-wide/32 v6, 0x186a0

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lorg/jpos/util/Profiler$Entry;->getTotalDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v1, p0, Lorg/jpos/util/Profiler$Entry;->totalDuration:J

    rem-long/2addr v1, v4

    div-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
